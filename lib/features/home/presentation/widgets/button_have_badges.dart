import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class ButtonHaveBadges extends StatelessWidget {
  final IconData icon;
  final int badges;
  final Function() onTap;
  final EdgeInsetsGeometry? margin;
  const ButtonHaveBadges({
    super.key,
    required this.icon,
    required this.badges,
    required this.onTap,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24.sp,
        color: Colors.transparent,
        margin: margin,
        child: Stack(
          children: [
            Icon(
              icon,
              color: colorPrimary2,
              size: 20.sp,
            ),
            Positioned(
              right: 2.sp,
              child: Container(
                width: 10.sp,
                height: 10.sp,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red.shade700,
                ),
                child: Text(
                  badges > 9 ? '9+' : badges.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 5.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
