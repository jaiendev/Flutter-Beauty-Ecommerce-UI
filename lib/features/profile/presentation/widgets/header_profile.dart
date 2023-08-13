import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/schedule/presentation/widgets/button_icon.dart';
import 'package:lotus_application/features/schedule/presentation/widgets/glass_morphic.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26.h,
      child: Stack(
        children: [
          Image.asset(
            AssetsIconImage.imgBackgroundProfile,
            width: double.infinity,
            height: 21.h,
            fit: BoxFit.cover,
          ),
          const Glassmorphic(),
          Positioned(
            bottom: 0,
            left: 12.sp,
            child: Container(
              decoration: BoxDecoration(
                color: colorPrimary,
                borderRadius: BorderRadius.circular(100.sp),
                border: Border.all(width: 0.5.sp, color: colorPrimary2),
              ),
              padding: EdgeInsets.all(2.sp),
              width: 90.w,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: colorPrimary2, width: 0.7.sp),
                    ),
                    padding: EdgeInsets.all(2.sp),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.sp),
                      child: Image.asset(
                        AssetsIconImage.avatarUser,
                        height: 55.sp,
                        width: 55.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.sp),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'AnYin',
                              style: TextStyle(
                                color: colorPrimary2,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 4.sp),
                            Image.asset(
                              AssetsIconImage.icVerify,
                              height: 16.sp,
                            ),
                            const Spacer(),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.sp),
                              child: Container(
                                height: 7.sp,
                                width: 7.sp,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 0.5.sp,
                                    color: colorPrimary2,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5.sp),
                        Text(
                          'annhi2606@gmail.com',
                          style: TextStyle(
                            color: Colors.blue.shade700,
                            fontSize: 11.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15.sp),
                ],
              ),
            ),
          ),
          Positioned(
            top: 30.sp,
            right: 0.sp,
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonIcon(icon: PhosphorIcons.light.bellSimpleRinging),
                  SizedBox(width: 10.sp),
                  ButtonIcon(
                    icon: PhosphorIcons.light.signOut,
                    colorIcon: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
