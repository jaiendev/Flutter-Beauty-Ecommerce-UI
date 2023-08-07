import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class TitleSeeAll extends StatelessWidget {
  final String title;
  final bool isVisibileSeeAll;
  final String? icon;
  const TitleSeeAll({
    super.key,
    required this.title,
    this.isVisibileSeeAll = true,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12.sp,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon == null
              ? const SizedBox()
              : Row(
                  children: [
                    Image.asset(
                      icon!,
                      height: 16.sp,
                      color: colorPrimary2,
                    ),
                    SizedBox(width: 8.sp),
                  ],
                ),
          Text(
            title,
            style: TextStyle(
              color: colorPrimary2,
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          !isVisibileSeeAll
              ? const SizedBox()
              : Row(
                  children: [
                    Text(
                      'See all',
                      style: TextStyle(
                        color: colorPrimary2,
                        fontSize: 9.sp,
                      ),
                    ),
                    SizedBox(width: 3.sp),
                    Icon(
                      PhosphorIcons.light.caretRight,
                      color: colorPrimary2,
                      size: 10.sp,
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
