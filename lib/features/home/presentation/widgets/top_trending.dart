import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/home/presentation/widgets/title_see_all.dart';
import 'package:lotus_application/features/home/presentation/widgets/top_trending_card.dart';
import 'package:sizer/sizer.dart';

class TopTrending extends StatelessWidget {
  const TopTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSeeAll(
          title: 'Top trending services',
          icon: AssetsIconImage.icTrending,
        ),
        SizedBox(height: 3.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.sp),
          child: Text(
            'Experience the top 10 trending services of Bosue',
            style: TextStyle(
              color: colorPrimary2,
              fontSize: 9.sp,
            ),
          ),
        ),
        SizedBox(height: 10.sp),
        SizedBox(
          height: 352.sp,
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 12.sp),
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.sp,
              mainAxisSpacing: 10.sp,
              childAspectRatio: 0.78,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return TopTrendingCard(
                index: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
