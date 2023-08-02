import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class TitleSeeAll extends StatelessWidget {
  final String title;
  const TitleSeeAll({
    super.key,
    required this.title,
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
          Text(
            title,
            style: TextStyle(
              color: colorPrimary2,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Text(
            'See all',
            style: TextStyle(
              color: colorPrimary2,
              fontSize: 11.sp,
            ),
          ),
          SizedBox(width: 3.sp),
          Icon(
            PhosphorIcons.light.caretRight,
            color: colorPrimary2,
            size: 10.sp,
          ),
        ],
      ),
    );
  }
}
