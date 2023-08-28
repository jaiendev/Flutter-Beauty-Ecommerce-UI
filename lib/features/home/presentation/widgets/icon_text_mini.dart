import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class IconTextMini extends StatelessWidget {
  final String description;
  final IconData icon;
  final Color? color;
  final double? fontSize;
  const IconTextMini({
    super.key,
    required this.icon,
    required this.description,
    this.color,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color ?? colorPrimary2,
          size: fontSize == null ? 10.sp : (fontSize! + 2.sp),
        ),
        SizedBox(width: 2.sp),
        Text(
          description,
          style: TextStyle(
            color: color ?? colorPrimary2,
            fontSize: fontSize ?? 8.sp,
          ),
        ),
      ],
    );
  }
}
