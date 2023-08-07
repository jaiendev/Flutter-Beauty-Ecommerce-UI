import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/home/presentation/widgets/review_service_card.dart';
import 'package:lotus_application/features/home/presentation/widgets/title_see_all.dart';
import 'package:sizer/sizer.dart';

class ReviewService extends StatelessWidget {
  const ReviewService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSeeAll(
          title: 'Review Service',
          icon: AssetsIconImage.icTag,
        ),
        SizedBox(height: 3.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.sp),
          child: Text(
            "Listen to users' hearts about the spa/salon you care about",
            style: TextStyle(
              color: colorPrimary2,
              fontSize: 9.sp,
            ),
          ),
        ),
        SizedBox(height: 10.sp),
        SizedBox(
          height: 115.sp,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(
              horizontal: 12.sp,
              vertical: 2.sp,
            ),
            itemBuilder: (context, index) {
              return const ReviewServiceCard();
            },
          ),
        ),
      ],
    );
  }
}
