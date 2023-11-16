import 'package:flutter/material.dart';

extension ColorExtensions on Color {
  Color saturated(double value) {
    final hslColor = HSLColor.fromColor(this);
    final hslDark =
        hslColor.withLightness((hslColor.lightness - value).clamp(0.0, 1.0));
    // final newValue = min(max(hslColor.saturation + value, 0.0), 1.0);
    return hslDark.toColor();
  }

  Brightness brightness() {
    final forcedAsDark = {const Color(0xFF11AC86)};
    if (forcedAsDark.contains(this)) return Brightness.dark;
    final luminance = computeLuminance();
    return luminance >= 0.3 ? Brightness.light : Brightness.dark;
  }

  bool isDark() {
    return brightness() == Brightness.dark;
  }

  Color lightGradient() {
    if (value == 0xFFEDD031) return this;

    final hslColor = HSLColor.fromColor(this);
    final saturation =
        (hslColor.saturation + 0.12) > 1.0 ? 1.0 : hslColor.saturation + 0.12;
    final lightness =
        (hslColor.lightness + 0.14) > 1.0 ? 1.0 : hslColor.lightness + 0.14;
    return HSLColor.fromAHSL(
      hslColor.alpha,
      hslColor.hue,
      saturation,
      lightness,
    ).toColor();
  }

  Color darkGradient() {
    if (value == 0xFFEDD031) {
      final color = this;
      final red = (color.red - 14) < 0 ? 0 : color.red - 14;
      final green = (color.green - 58) < 0 ? 0 : color.green - 58;
      final blue = (color.blue - 1) < 0 ? 0 : color.blue - 1;
      return Color.fromARGB(255, red, green, blue);
    } else {
      final hslColor = HSLColor.fromColor(this);
      final saturation =
          (hslColor.saturation - .12) < 0.0 ? 0.0 : hslColor.saturation - .12;
      final lightness =
          (hslColor.lightness - .14) < 0.0 ? 0.0 : hslColor.lightness - .14;
      return HSLColor.fromAHSL(
        hslColor.alpha,
        hslColor.hue,
        saturation,
        lightness,
      ).toColor();
    }
  }

  // Brightness brightness() {
  //   final hslColor = HSLColor.fromColor(this);
  //   if (value == 0xFFEDD031) {
  //     return Brightness.light;
  //   }
  //   return hslColor.lightness > 0.7 ? Brightness.light : Brightness.dark;
  // }

  Brightness brightnessInvert() {
    return brightness() == Brightness.dark ? Brightness.light : Brightness.dark;
  }

  String toHexString() {
    return '#${value.toRadixString(16).substring(2)}';
  }

  static Color fromHexString(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    final colorHex = int.tryParse(buffer.toString(), radix: 16);
    if (colorHex == null) return const Color(0xFFEDD031);
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
