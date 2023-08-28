import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/home/presentation/widgets/icon_text_mini.dart';

class ReviewServiceCard extends StatelessWidget {
  const ReviewServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.sp,
      padding: EdgeInsets.all(8.sp),
      margin: EdgeInsets.only(right: 12.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.sp),
        border: Border.all(
          width: 0.6.sp,
          color: colorPrimary2.withOpacity(0.3),
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.sp),
                    child: Image.asset(
                      AssetsIconImage.imgUserReview,
                      height: 30.sp,
                      width: 30.sp,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 7.sp),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3.sp),
                        Row(
                          children: [
                            Text(
                              'Lalisa Manobal • ',
                              style: TextStyle(
                                color: colorPrimary2,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              DateFormat('dd/MM/yyyy').format(DateTime.now()),
                              style: TextStyle(
                                color: colorGrey,
                                fontSize: 9.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.7.sp),
                        Text(
                          'Located on the upper floor of Coopmart Cao Thang supermarket, so the shop space is not very large, the address is reasonable, easy to go without much traffic jam.',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: colorPrimary2,
                            fontSize: 8.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.sp),
              Container(
                height: 46.sp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.sp),
                  boxShadow: [
                    BoxShadow(
                      color: colorPrimary2.withOpacity(0.15),
                      spreadRadius: 0.2,
                      blurRadius: 7,
                      offset: const Offset(
                        0,
                        3,
                      ), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(4.sp),
                      ),
                      child: Image.asset(
                        AssetsIconImage.imgBanner2,
                        height: 46.sp,
                        width: 70.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 3.sp,
                          horizontal: 5.sp,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Combo spa version 1',
                              style: TextStyle(
                                color: colorPrimary2,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.3.sp),
                            IconTextMini(
                              icon: PhosphorIcons.light.house,
                              description: 'Sulli - Nail && Spa',
                            ),
                            const Spacer(),
                            IconTextMini(
                              icon: PhosphorIcons.light.lightning,
                              description: r'37.8$',
                              color: Colors.orange,
                              fontSize: 10.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5.sp,
                  color: Colors.orange.shade700,
                ),
                borderRadius: BorderRadius.circular(1.3.sp),
              ),
              padding: EdgeInsets.all(3.sp),
              child: Text(
                '8.5',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 6.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
