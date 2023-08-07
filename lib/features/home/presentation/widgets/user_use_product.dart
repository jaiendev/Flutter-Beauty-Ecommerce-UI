import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:sizer/sizer.dart';

class UserUseProduct extends StatelessWidget {
  const UserUseProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.4.sp,
          color: Colors.white,
        ),
        shape: BoxShape.circle,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          100.sp,
        ),
        child: Image.asset(
          AssetsIconImage.avatarUser,
          height: 15.sp,
          width: 15.sp,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
