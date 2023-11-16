import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:pomodoro_flutter/extensions/duration_extensions.dart';
import 'package:pomodoro_flutter/features/home/domain/cubit/navigation_cubit.dart';
import 'package:pomodoro_flutter/features/pomodoro/domain/bloc/pomodoro_bloc.dart';
import 'package:pomodoro_flutter/features/settings/data/repos/settings_repo.dart';
import 'package:pomodoro_flutter/features/settings/data/translators/settings_translator.dart';
import 'package:pomodoro_flutter/features/settings/domain/bloc/settings_cubit.dart';
import 'package:pomodoro_flutter/routers/router.dart';
import 'package:pomodoro_flutter/services/app_state_service/app_state_listener.dart';
import 'package:pomodoro_flutter/services/app_state_service/app_state_service.dart';
import 'package:pomodoro_flutter/services/background/background_isolates_service.dart';
import 'package:pomodoro_flutter/services/background/background_service.dart';
import 'package:pomodoro_flutter/services/tick/tick_service.dart';
import 'package:pomodoro_flutter/ui/res/l10n/l10n.dart';
import 'package:pomodoro_flutter/ui/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/permissions/push_notifications/permissions_notifications_cubit.dart';
import 'features/permissions/push_notifications/permissions_notifications_repo.dart';
import 'firebase_options.dart';

BackgroundService backgroundService = BackgroundService();

@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  return true;
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  print('service body');
  // Only available for flutter 3.0.0 and later
  DartPluginRegistrant.ensureInitialized();

  BackgroundIsolateService(service);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _initFirebase();
  await backgroundService.initializeService();

  runApp(const MyApp());
}

Future<void> _initFirebase() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppStateService(),
      child: RepositoryProvider(
        create: (context) => const PermissionsNotificationsRepo(),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  PermissionsNotificationsCubit(
                    context.read<PermissionsNotificationsRepo>(),
                    context.read<AppStateService>(),
                  ),
            ),
            BlocProvider(
              create: (context) => NavigationCubit(),
            ),
            BlocProvider(
              create: (context) => SettingsCubit(SettingsRepo.instanse),
            ),
            BlocProvider(
              create: (context) => PomodoroBloc(context.read<SettingsCubit>()),
            ),
          ],
          child: RepositoryProvider(
            create: (context) => GlobalRouter(context.read<NavigationCubit>()),
            child: Builder(builder: (context) {
              return AppStateListener(
                child: MaterialApp.router(
                  title: 'Flutter Demo',
                  routerConfig: context
                      .read<GlobalRouter>()
                      .router,
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  locale: L10n.ru,
                  supportedLocales: AppLocalizations.supportedLocales,
                  theme: AppTheme.theme(context),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
