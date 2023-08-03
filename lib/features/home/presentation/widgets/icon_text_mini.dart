import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class IconTextMini extends StatelessWidget {
  final String description;
  final IconData icon;
  const IconTextMini({
    super.key,
    required this.icon,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: colorPrimary2,
          size: 10.sp,
        ),
        SizedBox(width: 2.sp),
        Text(
          description,
          style: TextStyle(
            color: colorPrimary2,
            fontSize: 8.sp,
          ),
        )
      ],
    );
  }
}
