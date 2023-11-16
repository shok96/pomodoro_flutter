import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../services/app_state_service/app_state_service.dart';
import '../../../common/domain/models/permission_denied.dart';
import '../../../common/domain/models/permission_granted.dart';
import '../../repos/permissions_repo.dart';

part 'permission_cubit.freezed.dart';
part 'permission_state.dart';

abstract class PermissionCubit extends Cubit<PermissionState> {
  PermissionCubit(this._repo, this._appStateService)
      : super(const PermissionState.unknown()) {
    _init();
  }

  final PermissionsRepo _repo;
  final AppStateService _appStateService;

  FutureOr<PermissionState> getPermission({bool forceUpdate = false}) async {
    final result = forceUpdate
        ? await _repo.request()
        : await state.map<FutureOr<PermissionState>>(
            unknown: (_) => _repo.request(),
            granted: (granted) => granted,
            denied: (denied) => denied.denied.map(
              canAsk: (_) => _repo.request(),
              permanently: (permanently) => denied,
            ),
          );
    emit(result);
    return result;
  }

  Future<void> _updateState() async {
    final status = await _repo.getStatus();
    emit(status);
  }

  void _appStateListener() {
    if (Platform.isAndroid) {
      _appStateService.state.mapOrNull(
        resumed: (resumed) => resumed.from?.mapOrNull(
          paused: (_) => _updateState(),
        ),
      );
    }
    if (Platform.isIOS) {
      _appStateService.state.mapOrNull(
        resumed: (resumed) => resumed.from?.mapOrNull(
          inactive: (_) => _updateState(),
        ),
      );
    }
  }

  void _init() {
    _appStateService.addListener(_appStateListener);
    _updateState();
  }

  @override
  Future<void> close() {
    _appStateService.removeListener(_appStateListener);
    return super.close();
  }
}
