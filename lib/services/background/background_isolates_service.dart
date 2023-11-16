import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:pomodoro_flutter/extensions/duration_extensions.dart';
import 'package:pomodoro_flutter/services/background/background_service.dart';
import 'package:pomodoro_flutter/services/tick/tick_service.dart';
import '../../features/pomodoro/domain/bloc/pomodoro_bloc.dart';
import '../../features/settings/data/dtos/settings_model_dto.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../ui/res/l10n/l10n.dart';

class BackgroundIsolateService {
  BackgroundIsolateService(this._serviceInstance) {
    _init();
  }

  final ServiceInstance _serviceInstance;
  final TickService _tickService = TickService.instanse;

  final appLoaclizations = AppLocalizations.delegate;
  late final AppLocalizations localizations;

  void _init() async {

    localizations = await appLoaclizations.load(L10n.ru);

    _tickService.setBackgroundIsolateSetvice(this);

    _serviceInstance.on(BackgroundService.stopServiceKey).listen(stopService);

    _serviceInstance.on(BackgroundService.startTickKey).listen(startTick);

    _serviceInstance.on(BackgroundService.pauseTickKey).listen(pauseTick);

    _serviceInstance.on(BackgroundService.forceUpdateKey).listen(forceUpdate);

    _serviceInstance.on(BackgroundService.restartTimerKey).listen(restartTimer);

    _serviceInstance.on(BackgroundService.loadSettingKey).listen(loadSetting);

    _serviceInstance.on(BackgroundService.saveSettingKey).listen(saveSetting);

    _tickService.restartTimer();

    forceLoadSetting();

  }

  void forceLoadSetting() async{
    final loadSetting = await _tickService.loadSetting();
    _serviceInstance.invoke(BackgroundService.loadSettingKey,
        _tickService.settingsTranslate.toDto(loadSetting).toJson());
  }

  void startService(Map<String, dynamic>? event) {}

  void stopService(Map<String, dynamic>? event) {}

  void updateTicker(PomodoroState pomodoroState) {
    _serviceInstance.invoke(
        BackgroundService.updateTickKey, pomodoroState.toJson());
    if (_serviceInstance is AndroidServiceInstance) {
      BackgroundService.flutterLocalNotificationsPlugin.show(
        888,
        localizations.title.toUpperCase(),
        pomodoroState.pushText(localizations),
        NotificationDetails(
          android: AndroidNotificationDetails(
            pomodoroState.isVibro
                ? BackgroundService.channelVibro.id
                : BackgroundService.channelDefault.id,
            pomodoroState.isVibro
                ? BackgroundService.channelVibro.id
                : BackgroundService.channelDefault.id,
            icon: 'ic_launcher',
            // importance: Importance.max,
            // priority: Priority.high,
            //playSound: true,
            //enableVibration: withVibration,
            vibrationPattern: pomodoroState.isVibro
                ? Int64List.fromList([0, 1000, 2000, 5000])
                : null,
            //ongoing: true,
          ),
        ),
      );
    }
  }

  void startTick(Map<String, dynamic>? event) {
    _tickService.startTick();
  }

  void pauseTick(Map<String, dynamic>? event) {
    _tickService.pauseTick();
  }

  void forceUpdate(Map<String, dynamic>? event) {
    _tickService.forceUpdate();
  }

  void restartTimer(Map<String, dynamic>? event) {
    _tickService.restartTimer();
  }

  void loadSetting(Map<String, dynamic>? event) async {
    forceLoadSetting();
  }

  void saveSetting(Map<String, dynamic>? event) async{
    if (event == null) return;
    await _tickService.saveSetting(
      _tickService.settingsTranslate.toDomain(
        SettingsModelDto.fromJson(event),
      ),
    );
    forceLoadSetting();
  }
}
