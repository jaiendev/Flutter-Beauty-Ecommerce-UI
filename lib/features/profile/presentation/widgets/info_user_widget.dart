import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class InfoUserWidget extends StatelessWidget {
  final IconData icon;
  final String description;
  final Color? colorDescription;
  const InfoUserWidget({
    super.key,
    required this.icon,
    required this.description,
    this.colorDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15.sp,
          color: colorPrimary2,
        ),
        SizedBox(width: 5.sp),
        Text(
          description,
          style: TextStyle(
            color: colorDescription ?? colorPrimary2,
            fontSize: 11.sp,
          ),
        ),
      ],
    );
  }
}
