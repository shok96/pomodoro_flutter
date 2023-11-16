import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro_flutter/ui/res/colors.dart';
import 'package:pomodoro_flutter/ui/theme/typography/typography.dart';
import 'package:pomodoro_flutter/ui/widgets/scale_on_tap.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.action,
    this.isInverted = false,
  });

  final String text;
  final bool isInverted;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ScaleOnTap(
        onTap: action,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isInverted ? pinkViolet : null,
            border: Border.all(
              color: isInverted ? Colors.transparent : pinkViolet,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12,
            ),
            child: Text(
              text,
              style: ProjectTypography.titleHeader.copyWith(
                color: isInverted ? white : pinkViolet,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
