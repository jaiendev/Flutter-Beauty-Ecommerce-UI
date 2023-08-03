import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/home/presentation/widgets/icon_text_mini.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class ServicePopularCard extends StatelessWidget {
  final int index;
  const ServicePopularCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.sp,
      margin: EdgeInsets.only(right: 10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.sp),
        border: Border.all(
          width: 0.6.sp,
          color: colorPrimary2,
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.sp, horizontal: 6.sp),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    border: Border.all(width: 0.3.sp, color: colorPrimary2),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.sp),
                    child: Image.asset(
                      AssetsIconImage.imgBanner1,
                      width: 158.sp,
                      height: 75.sp,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                width: 158.sp,
                padding: EdgeInsets.symmetric(
                  horizontal: 6.sp,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Foot/neck/shoulder massage 40p',
                      style: TextStyle(
                        height: 1.sp,
                        color: colorPrimary2,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4.sp),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              IconTextMini(
                                icon: PhosphorIcons.light.house,
                                description: 'Vyan Home Spa',
                              ),
                              SizedBox(height: 4.sp),
                              IconTextMini(
                                icon: PhosphorIcons.light.mapPin,
                                description: '1289.2m',
                              ),
                            ],
                          ),
                        ),
                        Text(
                          r'12.5$',
                          style: TextStyle(
                            color: colorPrimary2,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: -2,
            right: 10.sp,
            child: Stack(
              children: [
                Image.asset(
                  AssetsIconImage.icBookMark,
                  color: colorPrimary2,
                  height: 22.sp,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 15.sp,
                  height: 20.sp,
                  child: Text(
                    '$index',
                    style: TextStyle(
                      color: colorPrimary,
                      fontSize: 7.5.sp,
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
