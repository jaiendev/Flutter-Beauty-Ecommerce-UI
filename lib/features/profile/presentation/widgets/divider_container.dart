import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class DividerContainer extends StatelessWidget {
  final double? height;
  final double? width;
  const DividerContainer({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50.sp,
      width: width ?? 0.2.sp,
      color: colorPrimary2,
    );
  }
}
