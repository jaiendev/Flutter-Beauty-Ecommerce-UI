import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class ContainerIconText extends StatelessWidget {
  final String icon;
  final String title;
  const ContainerIconText({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ColoredBox(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 20.sp,
              width: 20.sp,
            ),
            SizedBox(height: 5.sp),
            Text(
              title,
              style: TextStyle(
                color: colorPrimary2,
                fontSize: 8.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
