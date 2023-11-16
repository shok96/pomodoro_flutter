import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';
import 'app_state_service.dart';

class AppStateListener extends StatelessWidget {
  const AppStateListener({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _Listener(child: child);
  }
}

class _Listener extends StatefulWidget {
  const _Listener({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<_Listener> createState() => _ListenerState();
}

class _ListenerState extends State<_Listener> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final service = context.read<AppStateService>();
    final prevState = service.state;
    switch (state) {
      case AppLifecycleState.detached:
      case AppLifecycleState.paused:
        service.state = AppState.paused(prevState);
        break;
      case AppLifecycleState.inactive:
        service.state = AppState.inactive(prevState);
        break;
      case AppLifecycleState.resumed:
        service.state = AppState.resumed(prevState);
        break;
      default:
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
