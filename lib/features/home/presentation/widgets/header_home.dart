import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:sizer/sizer.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: colorPrimary,
      padding: EdgeInsets.symmetric(
        horizontal: 12.sp,
        vertical: 15.sp,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 5.sp),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        height: 1.sp,
                        color: colorPrimary2,
                        fontSize: 15.sp,
                      ),
                      children: [
                        const TextSpan(
                          text: 'Hi AnYin\n',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Welcome to the beauty paradise',
                          style: TextStyle(
                            fontSize: 11.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.sp),
                    child: Image.asset(
                      AssetsIconImage.avatarUser,
                      height: 25.sp,
                      width: 25.sp,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5.sp),
                  Text(
                    'Ho Chi Minh',
                    style: TextStyle(
                      color: colorPrimary2,
                      fontSize: 10.sp,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 18.sp),
          // const SearchHome(),
        ],
      ),
    );
  }
}
