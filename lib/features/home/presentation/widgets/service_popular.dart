import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/home/presentation/widgets/service_popular_card.dart';
import 'package:lotus_application/features/home/presentation/widgets/title_see_all.dart';
import 'package:sizer/sizer.dart';

class ServicePopular extends StatelessWidget {
  const ServicePopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSeeAll(
          title: 'Service Popular',
          icon: AssetsIconImage.icPopular,
        ),
        SizedBox(height: 8.sp),
        SizedBox(
          height: 165.sp,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(
              horizontal: 12.sp,
              vertical: 2.sp,
            ),
            itemBuilder: (context, index) {
              return ServicePopularCard(
                index: index + 1,
              );
            },
          ),
        ),
      ],
    );
  }
}
