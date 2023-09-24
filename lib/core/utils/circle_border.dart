// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class CircularBorder extends StatelessWidget {
  final Color color;
  final double size;
  final String image;
  final int countParts;
  final bool isMe;
  final int indexHasSeen;

  const CircularBorder({
    super.key,
    this.color = colorPrimary2,
    this.size = 70,
    required this.image,
    required this.countParts,
    this.isMe = false,
    required this.indexHasSeen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          CustomPaint(
            size: Size(size, size),
            foregroundPainter: MyPainter(
              completeColor: color,
              countParts: countParts,
              indexHasSeen: indexHasSeen,
            ),
            child: Padding(
              padding: EdgeInsets.all(2.sp),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.sp),
                child: Image.asset(
                  image,
                  width: size - 5.sp,
                  height: size - 5.sp,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Visibility(
            visible: isMe,
            child: Positioned(
              right: 1.sp,
              bottom: 2.sp,
              child: Container(
                decoration: BoxDecoration(
                  color: colorPrimary2,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 0.7.sp,
                    color: Colors.white,
                  ),
                ),
                padding: EdgeInsets.all(2.6.sp),
                child: Icon(
                  PhosphorIcons.light.plus,
                  color: Colors.white,
                  size: 8.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  Color lineColor = Colors.transparent;
  Color completeColor;
  int countParts;
  int indexHasSeen;
  MyPainter({
    required this.completeColor,
    required this.countParts,
    required this.indexHasSeen,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final Paint complete = Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.3.sp;

    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = min(size.width / 2, size.height / 2);

    final double arcAngle = 2 * pi / countParts - (countParts == 1 ? 0 : 0.1);

    for (var i = 0; i < countParts; i++) {
      final init = 2 * pi * (i / countParts) - pi / 2;
      if (i + 1 > indexHasSeen) {
        complete.color = Colors.grey.shade400;
      }

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        init,
        arcAngle,
        false,
        complete,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
