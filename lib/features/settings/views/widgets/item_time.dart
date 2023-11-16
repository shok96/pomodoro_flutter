import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:pomodoro_flutter/ui/res/colors.dart';
import 'package:pomodoro_flutter/ui/theme/typography/typography.dart';

import '../../../../helper/custom_text_input_formatter.dart';
import '../../../../ui/widgets/input.dart';

class ItemTime extends StatelessWidget {
  const ItemTime({
    super.key,
    required this.text,
    required this.controller,
    required this.limit,
    this.onFocus,
  });

  final String text;
  final TextEditingController controller;
  final LimitNumericTextFormatter limit;
  final Function(bool isFocus)? onFocus;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: ProjectTypography.subTitleModal.copyWith(
            color: white.withOpacity(0.7),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 70),
          child: Input(
            formatters: [
              LengthLimitingTextInputFormatter(3),
              FilteringTextInputFormatter.deny(RegExp(r'[.,-/ ]')),
            ],
            inputType: TextInputType.number,
            controller: controller,
            onFocus: onFocus,
          ),
        ),
      ],
    );
  }
}
