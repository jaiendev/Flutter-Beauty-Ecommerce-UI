import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/features/home/presentation/widgets/user_use_product.dart';
import 'package:sizer/sizer.dart';

class FeaturingProductCard extends StatelessWidget {
  const FeaturingProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.sp,
      margin: EdgeInsets.symmetric(vertical: 5.sp).add(
        EdgeInsets.only(
          right: 12.sp,
        ),
      ),
      padding: EdgeInsets.all(5.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.sp),
        boxShadow: [
          BoxShadow(
            color: colorPrimary2.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 9,
            offset: const Offset(
              0,
              3,
            ), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.sp),
            child: Stack(
              children: [
                Image.asset(
                  AssetsIconImage.imgProduct,
                  width: 150.sp,
                  height: 100.sp,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.sp, vertical: 5.sp),
                    decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.sp),
                      ),
                    ),
                    child: Text(
                      'NEW PRODUCT',
                      style: TextStyle(
                        color: colorPrimary2,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4.sp),
            decoration: BoxDecoration(
              color: colorPrimary,
              borderRadius: BorderRadius.circular(4.sp),
            ),
            padding: EdgeInsets.all(4.5.sp),
            child: Text(
              'Toner',
              style: TextStyle(
                color: colorPrimary2,
                fontSize: 7.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 5.sp),
          Text(
            'SOMEGLOW Concetrate',
            style: TextStyle(
              color: colorPrimary2,
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5.sp),
          Text(
            'Helps clean up residual dirt, oil, and makeup that is not removed when using cleaning milk or facial cleaning soap.',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: colorGrey,
              fontSize: 7.sp,
            ),
          ),
          SizedBox(height: 15.sp),
          Row(
            children: [
              SizedBox(
                width: 25.sp,
                child: const Stack(
                  children: [
                    UserUseProduct(),
                    Positioned(
                      right: 0,
                      child: UserUseProduct(),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 3.sp),
              Text(
                '4.7K Buy this product',
                style: TextStyle(
                  color: colorGrey,
                  fontSize: 7.sp,
                ),
              ),
              const Spacer(),
              Text(
                r'15$',
                style: TextStyle(
                  color: colorPrimary2,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 3.sp),
            ],
          )
        ],
      ),
    );
  }
}
