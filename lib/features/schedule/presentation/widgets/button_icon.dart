import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class ButtonIcon extends StatelessWidget {
  final IconData icon;
  final Color? backgroundColor;
  final Color? colorIcon;
  final Function()? onTap;
  const ButtonIcon({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.colorIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ?? colorPrimary,
        ),
        padding: EdgeInsets.all(8.sp),
        child: Icon(
          icon,
          size: 16.sp,
          color: colorIcon ?? colorPrimary2,
        ),
      ),
    );
  }
}
