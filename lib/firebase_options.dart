// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCozfvJea_RQmPFs0S5AjXu0frvqP1bBrw',
    appId: '1:859983801702:web:7cfba761182deb01716ca7',
    messagingSenderId: '859983801702',
    projectId: 'pomodoro-flutter-70719',
    authDomain: 'pomodoro-flutter-70719.firebaseapp.com',
    storageBucket: 'pomodoro-flutter-70719.appspot.com',
    measurementId: 'G-GKME995MBQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzfGzvrEBFiNq5FuBCfdIfdlgbRI4URWo',
    appId: '1:859983801702:android:8a51dd240de54e41716ca7',
    messagingSenderId: '859983801702',
    projectId: 'pomodoro-flutter-70719',
    storageBucket: 'pomodoro-flutter-70719.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCVTGet1CbesdwGcBT-T0n7lJ6y7767DAQ',
    appId: '1:859983801702:ios:db3f195a9ae89513716ca7',
    messagingSenderId: '859983801702',
    projectId: 'pomodoro-flutter-70719',
    storageBucket: 'pomodoro-flutter-70719.appspot.com',
    iosBundleId: 'ru.andlancer.pomodoro.pomodoroFlutter',
  );
}
