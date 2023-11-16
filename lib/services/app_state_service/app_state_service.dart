import 'package:flutter/material.dart';

import 'app_state.dart';

class AppStateService extends ChangeNotifier {
  AppState _state = const AppState.resumed(null);

  AppState get state => _state;

  set state(AppState newState) {
    _state = newState;
    notifyListeners();
  }
}
