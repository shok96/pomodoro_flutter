import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:pomodoro_flutter/extensions/duration_extensions.dart';

import '../../main.dart';
import '../tick/tick_service.dart';

class BackgroundService {
  static const String stopServiceKey = "STOP_SERVICE";
  static const String startServiceKey = "START_SERVICE";
  static const String startTickKey = "START_TICK";
  static const String pauseTickKey = "PAUSE_TICK";
  static const String forceUpdateKey = "FORCE_UPDATE";
  static const String updateTickKey = "UPDATE_TICK";
  static const String restartTimerKey = "RESTART_TIMER";
  static const String saveSettingKey = "SAVE_SETTING";
  static const String loadSettingKey = "LOAD_SETTING";

  static const AndroidNotificationChannel channelDefault =
      AndroidNotificationChannel(
    'my_foreground',
    'MY FOREGROUND SERVICE',
    description: 'This channel is used for important notifications.',
    importance: Importance.low,
  );

  static final AndroidNotificationChannel channelVibro =
      AndroidNotificationChannel(
    'my_foregroundVibro',
    'MY FOREGROUND SERVICE VIBRO',
    description: 'This channel is used for important notifications.',
    vibrationPattern: Int64List.fromList([0, 1000, 2000, 5000]),
    importance: Importance.max,
  );

  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final service = FlutterBackgroundService();

  Future<bool> startService() async {
    return service.startService();
  }

  Future<void> initializeService() async {
    if (Platform.isIOS || Platform.isAndroid) {
      await flutterLocalNotificationsPlugin.initialize(
        const InitializationSettings(
          iOS: DarwinInitializationSettings(),
          android: AndroidInitializationSettings('ic_launcher'),
        ),
      );
    }

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(BackgroundService.channelDefault);

    await service.configure(
      androidConfiguration: AndroidConfiguration(
        onStart: onStart,
        isForegroundMode: true,
        autoStartOnBoot: false,
        notificationChannelId: channelDefault.id,
        // initialNotificationTitle: 'AWESOME SERVICE',
        // initialNotificationContent: 'Initializing',
        foregroundServiceNotificationId: 888,
      ),
      iosConfiguration: IosConfiguration(
        autoStart: true,
        onForeground: onStart,
        onBackground: onIosBackground,
      ),
    );
  }
}
