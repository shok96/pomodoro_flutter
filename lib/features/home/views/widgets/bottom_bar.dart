import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:pomodoro_flutter/extensions/num_extansions.dart';
import 'package:pomodoro_flutter/features/home/domain/cubit/navigation_cubit.dart';
import 'package:pomodoro_flutter/features/pomodoro/views/Pomodoro_screen.dart';
import 'package:pomodoro_flutter/features/settings/domain/bloc/settings_cubit.dart';
import 'package:pomodoro_flutter/features/settings/views/settings_screen.dart';
import 'package:pomodoro_flutter/ui/widgets/scale_on_tap.dart';

import '../../../../ui/res/colors.dart';
import '../../../../ui/theme/pomodoro_fonts.dart';
import '../../../pomodoro/domain/bloc/pomodoro_bloc.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return _BottomBarBody(
          home: _RowIcon(
            action: () {
              // context
              //     .read<NavigationCubit>()
              //     .setNavigation(const NavigationState.home());
              context.go(PomodoroScreen.route);
            },
            isActive: state == const NavigationState.home(),
            icon: PomodoroFonts.home,
            iconActive: PomodoroFonts.home_active,
          ),
          setting: _RowIcon(
            action: () {
              // context
              //     .read<NavigationCubit>()
              //     .setNavigation(const NavigationState.settings());
              context.go(SettingsScreen.route);
            },
            isActive: state == const NavigationState.settings(),
            icon: PomodoroFonts.setting,
            iconActive: PomodoroFonts.setting_active,
          ),
          bigButton: _BigButton(
            actionSettings: () => context.read<SettingsCubit>().save(context),
            actionPlay: () =>
                context.read<PomodoroBloc>().add(const PomodoroEvent.pause()),
            actionPause: () =>
                context.read<PomodoroBloc>().add(const PomodoroEvent.play()),
          ),
        );
      },
    );
  }
}

class _BottomBarBody extends StatelessWidget {
  const _BottomBarBody({
    super.key,
    required this.setting,
    required this.home,
    required this.bigButton,
  });

  final _RowIcon home, setting;
  final _BigButton bigButton;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomBottomNavigationPainter(context),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.bottomLeft,
          children: [
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  home,
                  setting,
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 60, left: MediaQuery.of(context).size.width * 0.65),
              child: bigButton,
            ),
          ],
        ),
      ),
    );
  }
}

class _BigButton extends StatelessWidget {
  const _BigButton({
    super.key,
    required this.actionPlay,
    required this.actionPause,
    required this.actionSettings,
  });

  final VoidCallback actionPlay, actionPause, actionSettings;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, stateSettings) {
            return BlocBuilder<PomodoroBloc, PomodoroState>(
              builder: (context, statePomodoro) {
                return ScaleOnTap(
                  isDisabled: (!stateSettings.isValid &&
                      state == const NavigationState.settings()),
                  onTap: state.when(
                    home: () => statePomodoro.tickMode.maybeWhen(
                        pause: () => actionPlay, orElse: () => actionPause),
                    settings: () => actionSettings,
                  ),
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          pinkVioletDark,
                          pinkVioletLight,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(35),
                      child: Icon(
                        state.when(
                          home: () => statePomodoro.tickMode.maybeWhen(
                              pause: () => Icons.pause,
                              orElse: () => PomodoroFonts.play),
                          settings: () => PomodoroFonts.tick,
                        ),
                        color: !(!stateSettings.isValid &&
                                state == const NavigationState.settings())
                            ? white
                            : white.withOpacity(0.5),
                        size: 30,
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

class _RowIcon extends StatelessWidget {
  const _RowIcon({
    super.key,
    this.isActive = false,
    required this.action,
    required this.icon,
    required this.iconActive,
  });

  final bool isActive;
  final IconData icon, iconActive;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ScaleOnTap(
          onTap: action,
          child: Icon(
            isActive ? iconActive : icon,
            color: pinkViolet,
            size: 30,
          ),
        ),
        12.h,
        Opacity(
          opacity: isActive ? 1.0 : 0.0,
          child: const Icon(
            PomodoroFonts.point,
            color: pinkViolet,
            size: 10,
          ),
        ),
      ],
    );
  }
}

class CustomBottomNavigationPainter extends CustomPainter {
  final BuildContext context;

  CustomBottomNavigationPainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = pinkViolet
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path = Path()
      ..moveTo(0, size.height * 0.45)
      ..quadraticBezierTo(0, size.height * 0.4, 50, size.height * 0.4)
      ..lineTo(size.width * 0.5, size.height * 0.4)
      ..cubicTo(size.width * 0.65, size.height * 0.4, size.width * 0.65,
          size.height * 0.75, size.width * 0.8, size.height * 0.7)
      ..cubicTo(size.width * 0.78, size.height * 0.705, size.width * 0.85,
          size.height * 0.7, size.width * 0.9, size.height * 0.58)
      ..cubicTo(size.width * 0.99, size.height * 0.39, size.width * 0.98,
          size.height * 0.4, size.width, size.height * 0.4);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
