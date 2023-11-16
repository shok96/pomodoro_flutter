import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pomodoro_flutter/extensions/duration_extensions.dart';
import 'package:pomodoro_flutter/ui/res/colors.dart';
import 'package:pomodoro_flutter/ui/theme/typography/typography.dart';

import '../../domain/bloc/pomodoro_bloc.dart';
import 'circular_progress.dart';

class TimerWidgets extends HookWidget {
  const TimerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            colors: [
              pinkVioletDark,
              pinkVioletLight,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.normal,
              offset: const Offset(
                -5,
                -5,
              ),
              blurRadius: 50,
              color: white.withOpacity(0.5),
            ),
            BoxShadow(
              blurStyle: BlurStyle.normal,
              offset: const Offset(
                5,
                5,
              ),
              blurRadius: 50,
              color: black.withOpacity(0.05),
            ),
            BoxShadow(
              blurStyle: BlurStyle.inner,
              offset: const Offset(
                5,
                5,
              ),
              blurRadius: 50,
              color: black.withOpacity(0.05),
            ),
            BoxShadow(
              blurStyle: BlurStyle.inner,
              offset: const Offset(
                -5,
                -5,
              ),
              blurRadius: 50,
              color: white.withOpacity(0.5),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocBuilder<PomodoroBloc, PomodoroState>(
          builder: (context, state) {
            return CircularProgress(
              progress: state.progress,
              child: Text(
                state.nowTick.niceFormat(),
                style: ProjectTypography.timer.copyWith(color: white),
              ),
            );
          },
        ),
      ),
    );
  }
}
