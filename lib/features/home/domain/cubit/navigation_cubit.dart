import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodoro_flutter/features/pomodoro/views/Pomodoro_screen.dart';
import 'package:pomodoro_flutter/features/settings/views/settings_screen.dart';

part 'navigation_state.dart';

part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState.home());

  void setNavigation(NavigationState state) {
    emit(state);
  }

  void changeBottomNavigationState(String path) {
    switch (path) {
      case PomodoroScreen.route:
        emit(const NavigationState.home());
        break;
      case SettingsScreen.route:
        emit(const NavigationState.settings());
        break;
    }
  }
}
