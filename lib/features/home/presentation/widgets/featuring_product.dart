import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/home/presentation/widgets/featuring_product_card.dart';
import 'package:lotus_application/features/home/presentation/widgets/title_see_all.dart';
import 'package:sizer/sizer.dart';

class FeaturingProduct extends StatelessWidget {
  const FeaturingProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSeeAll(
          title: 'Featuring Product',
          icon: AssetsIconImage.icLotion,
        ),
        SizedBox(height: 5.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.sp),
          child: Text(
            "Products use 100% natural ingredients so they are safe to use for a long time.",
            style: TextStyle(
              color: colorPrimary2,
              fontSize: 9.sp,
            ),
          ),
        ),
        SizedBox(height: 5.sp),
        SizedBox(
          height: 230.sp,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(
              horizontal: 12.sp,
              vertical: 2.sp,
            ),
            itemBuilder: (context, index) {
              return const FeaturingProductCard();
            },
          ),
        ),
      ],
    );
  }
}
