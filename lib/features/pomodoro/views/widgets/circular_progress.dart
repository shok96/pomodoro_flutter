import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pomodoro_flutter/ui/res/colors.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({
    super.key,
    required this.child,
    required this.progress,
  });

  final Widget child;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 200,
        minWidth: 200,
      ),
      child: CustomPaint(
        child: ClipRect(
          child: Center(child: child),
        ),
        foregroundPainter: _CircleProgressBarPainter(progress),
      ),
    );
  }
}

class _CircleProgressBarPainter extends CustomPainter {
  final double progress;

  _CircleProgressBarPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    double radius = min(size.width / 2, size.height / 2);
    Offset center = Offset(size.width / 2, size.height / 2);

    double arcAngle = 2 * pi * (progress);

    Paint progressPaint = Paint()
      ..color = white
      ..strokeWidth = 7
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        arcAngle, false, progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
