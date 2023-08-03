import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/home/presentation/widgets/list_deal_hot.dart';
import 'package:sizer/sizer.dart';

class DealHot extends StatelessWidget {
  const DealHot({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.sp),
          child: Row(
            children: [
              Text(
                'Deal hot',
                style: TextStyle(
                  color: colorPrimary2,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 4.sp),
              Image.asset(
                AssetsIconImage.icDealHot,
                height: 20.sp,
              ),
            ],
          ),
        ),
        SizedBox(height: 8.sp),
        const ListDealHot(),
      ],
    );
  }
}
