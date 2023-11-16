import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pomodoro_flutter/features/home/domain/cubit/navigation_cubit.dart';
import 'package:pomodoro_flutter/features/home/views/Home_screen.dart';
import 'package:pomodoro_flutter/features/pomodoro/views/Pomodoro_screen.dart';
import 'package:pomodoro_flutter/features/splash/views/production_app.dart';
import 'package:pomodoro_flutter/features/splash/views/splash_screen.dart';

import '../features/settings/views/settings_screen.dart';

class GlobalRouter {
  GlobalRouter(this._navigationCubit);

  final NavigationCubit _navigationCubit;

  final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
  final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

  GoRouter get router => GoRouter(
        redirect: (context, state) {
          _navigationCubit.changeBottomNavigationState(state.matchedLocation);
        },
        navigatorKey: _rootNavigatorKey,
        initialLocation: SplashScreen.route,
        routes: [
          GoRoute(
            path: SplashScreen.route,
            builder: (context, state) => const SplashScreen(),
          ),
          GoRoute(
            path: ProductionApp.route,
            builder: (context, state) => const ProductionApp(),
          ),
          homeRouter,
        ],
      );

  ShellRoute get homeRouter => ShellRoute(
          builder: (context, state, child) => HomeScreen(child: child),
          routes: [
            GoRoute(
              path: PomodoroScreen.route,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: PomodoroScreen(),
              ),
            ),
            GoRoute(
              path: SettingsScreen.route,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: SettingsScreen()),
            ),
          ]);
}
