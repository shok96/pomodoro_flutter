import 'package:flutter/services.dart';

class LimitNumericTextFormatter extends TextInputFormatter {
  LimitNumericTextFormatter(this.limit, {this.limitMin = 1});

  final int limit;
  final int limitMin;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    final textNumber = int.tryParse(newValue.text);
    if (textNumber != null) {
      if (textNumber > limit) {
        return newValue.copyWith(text: limit.toString());
      } else if (textNumber < limitMin) {
        return newValue.copyWith(text: limitMin.toString());
      } else {
        return newValue;
      }
    } else {
      return newValue;
    }
  }
}
