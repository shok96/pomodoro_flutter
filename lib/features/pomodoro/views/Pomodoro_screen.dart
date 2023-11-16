import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pomodoro_flutter/features/pomodoro/views/widgets/tab_mode.dart';
import 'package:pomodoro_flutter/features/pomodoro/views/widgets/timer.dart';

class PomodoroScreen extends HookWidget {
  const PomodoroScreen({super.key});

  static const route = "/pomodore";

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 60),
      child: Column(
        children: [
          TimerWidgets(),
          Padding(
            padding: EdgeInsets.only(
              left: 14,
              right: 14,
              top: 50,
            ),
            child: TabMode(),
          ),
        ],
      ),
    );
  }
}
