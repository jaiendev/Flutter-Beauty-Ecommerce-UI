import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/home/presentation/widgets/icon_text_mini.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class TopTrendingCard extends StatelessWidget {
  final int index;
  const TopTrendingCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.sp,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: colorPrimary2, width: 0.3.sp),
        borderRadius: BorderRadius.circular(8.sp),
        boxShadow: [
          BoxShadow(
            color: colorPrimary2.withOpacity(0.3),
            spreadRadius: 0.2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(8.sp),
                  ),
                  child: Image.asset(
                    AssetsIconImage.imgBanner3,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(8.sp),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.sp,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 4.sp,
                        ),
                        child: Text(
                          'Herbal shampoo',
                          style: TextStyle(
                            color: colorPrimary2,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      IconTextMini(
                        icon: PhosphorIcons.light.house,
                        description: 'Hana nail & spa',
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.symmetric(
                          vertical: 6.sp,
                        ),
                        child: Text(
                          r'42.7$',
                          style: TextStyle(
                            color: colorPrimary2,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.sp,
                          vertical: 6.sp,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            40.sp,
                          ),
                          color: colorPrimary2,
                        ),
                        margin: EdgeInsets.only(
                          bottom: 6.sp,
                        ),
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          '1293 bookings',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.5.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: -2,
            right: 3.sp,
            child: Stack(
              children: [
                Image.asset(
                  AssetsIconImage.icBookMark2,
                  color: colorPrimary2,
                  height: 30.sp,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 30.sp,
                  height: 25.sp,
                  child: Text(
                    '#${index + 1}',
                    style: TextStyle(
                      color: colorPrimary,
                      fontSize: 7.5.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
