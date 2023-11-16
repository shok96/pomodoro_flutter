import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pomodoro_flutter/features/pomodoro/views/Pomodoro_screen.dart';
import 'package:pomodoro_flutter/features/splash/views/production_app.dart';
import '../../../ui/res/colors.dart';
import '../../../ui/theme/typography/typography.dart';
import '../../pomodoro/views/widgets/circular_progress.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const route = "/splash";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(48.0),
          child: _Logo(),
        ),
      ),
    );
  }
}

class _Logo extends HookWidget {
  const _Logo({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final controller =
        useAnimationController(duration: const Duration(seconds: 2));

    useEffect(() {
      controller.forward().then(
            (value) => context.go(ProductionApp.route),
          );
      return null;
    }, []);

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
        child: AnimatedBuilder(
            animation: controller,
            builder: (context, value) {
              return CircularProgress(
                progress: controller.value,
                child: Text(
                  localizations.title.toUpperCase(),
                  style: ProjectTypography.logo.copyWith(color: white),
                ),
              );
            }),
      ),
    );
  }
}
