// Place fonts/icomoon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: icomoon
//      fonts:
//       - asset: fonts/icomoon.ttf
import 'package:flutter/widgets.dart';

class PomodoroFonts {
  PomodoroFonts._();

  static const String _fontFamily = 'pomodoro_icons';

  static const IconData home_active = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData setting_active =
      IconData(0xe906, fontFamily: _fontFamily);
  static const IconData point = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData tick = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData play = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData setting = IconData(0xe904, fontFamily: _fontFamily);
}
