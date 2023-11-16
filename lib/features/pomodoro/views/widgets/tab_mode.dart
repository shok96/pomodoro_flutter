import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro_flutter/extensions/num_extansions.dart';
import 'package:pomodoro_flutter/ui/res/colors.dart';
import 'package:pomodoro_flutter/ui/theme/typography/typography.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../domain/bloc/pomodoro_bloc.dart';

class TabMode extends StatelessWidget {
  const TabMode({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return BlocBuilder<PomodoroBloc, PomodoroState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _Item(
              text: localizations.tab_mode_short,
              isActive: state.mode == const PomodoreMode.short(),
              isCounter: true,
              textCounter: "${(state.shortCount)} / ${PomodoreMode.limitShort}",
            ),
            _Item(
              text: localizations.tab_mode_pomodoro,
              isActive: state.mode == const PomodoreMode.pomodoro(),
            ),
            _Item(
              text: localizations.tab_mode_long,
              isActive: state.mode == const PomodoreMode.long(),
            ),
          ],
        );
      },
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    super.key,
    required this.text,
    this.isActive = false,
    this.isCounter = false,
    this.textCounter = "",
  });

  final String text;
  final bool isActive;
  final bool isCounter;
  final String textCounter;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Opacity(
            opacity: isCounter ? 1 : 0,
            child: Text(
              textCounter,
              style: ProjectTypography.tabModeInActive,
            ),
          ),
          8.h,
          Text(
            text,
            style: isActive
                ? ProjectTypography.tabModeActive
                : ProjectTypography.tabModeInActive.copyWith(color: textInActive),
            textAlign: TextAlign.center,
          ),
          if (isActive) 10.h,
          if (isActive)
            DecoratedBox(
              decoration: BoxDecoration(
                  color: pinkViolet, borderRadius: BorderRadius.circular(20)),
              child: const SizedBox(
                width: 50,
                height: 10,
              ),
            ),
        ],
      ),
    );
  }
}
