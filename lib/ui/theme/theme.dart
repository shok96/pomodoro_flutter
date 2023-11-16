import 'package:flutter/material.dart';
import 'package:pomodoro_flutter/ui/res/colors.dart';

class AppTheme{

  static ThemeData theme(BuildContext context) => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: white,
    textTheme: Theme.of(context)
        .textTheme
        .apply(
      fontFamily: 'Poppins',
      bodyColor: pinkViolet,
      displayColor: pinkViolet,
    ),
  );

}