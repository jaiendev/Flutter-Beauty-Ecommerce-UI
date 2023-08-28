import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class ButtonLoginSocial extends StatelessWidget {
  final String icon;
  final String title;
  final Function() onTap;
  const ButtonLoginSocial({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            width: 1.sp,
            color: colorPrimary2.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(7.sp),
        ),
        padding: EdgeInsets.symmetric(vertical: 9.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 15.sp,
            ),
            SizedBox(width: 10.sp),
            Text(
              title,
              style: TextStyle(
                color: colorPrimary2,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
