import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:pomodoro_flutter/features/home/domain/cubit/navigation_cubit.dart';
import 'package:pomodoro_flutter/features/home/views/widgets/bottom_bar.dart';
import 'package:pomodoro_flutter/features/pomodoro/domain/bloc/pomodoro_bloc.dart';
import 'package:pomodoro_flutter/features/settings/views/settings_screen.dart';
import 'package:pomodoro_flutter/ui/res/colors.dart';
import 'package:pomodoro_flutter/ui/theme/typography/typography.dart';
import 'package:pomodoro_flutter/ui/widgets/scale_on_tap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../ui/theme/pomodoro_fonts.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {

    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: SafeArea(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    localizations.title.toUpperCase(),
                    style: ProjectTypography.titleHeader,
                  ),
                  BlocBuilder<NavigationCubit, NavigationState>(
                    builder: (context, stateNavigation) {
                      return BlocBuilder<PomodoroBloc, PomodoroState>(
                        builder: (context, statePomodoro) {
                          return stateNavigation.when(
                              home: () => ScaleOnTap(
                                    onTap: () {
                                      context
                                          .read<PomodoroBloc>()
                                          .add(PomodoroEvent.restart());
                                    },
                                    isDisabled:
                                        statePomodoro.tickMode.maybeWhen(
                                      orElse: () => false,
                                      pause: () => true,
                                    ),
                                    child: Icon(
                                      Icons.restart_alt,
                                      color: statePomodoro.tickMode.maybeWhen(
                                        orElse: () => pinkViolet,
                                        pause: () => grey85,
                                      ),
                                      size: 26,
                                    ),
                                  ),
                              settings: SizedBox.shrink);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
