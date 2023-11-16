import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro_flutter/ui/res/colors.dart';

class ColoredList extends StatelessWidget {
  const ColoredList({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              _ItemColored(
                color: pinkViolet,
                isActive: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemColored extends StatelessWidget {
  const _ItemColored({
    super.key,
    this.isActive = false,
    required this.color,
  });

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: isActive
            ? Border.all(
                color: Colors.white,
                width: 1,
              )
            : null,
        color: color,
      ),
      child: const SizedBox.square(
        dimension: 40,
      ),
    );
  }
}
