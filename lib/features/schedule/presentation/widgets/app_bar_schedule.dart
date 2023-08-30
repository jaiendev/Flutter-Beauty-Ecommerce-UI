import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/core/app/constants/schedule_constants.dart';
import 'package:lotus_application/features/schedule/data/models/time_line_model.dart';
import 'package:sizer/sizer.dart';

class AppBarSchedules extends StatelessWidget {
  const AppBarSchedules({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    monthNames[DateTime.now().month - 1],
                    style: TextStyle(
                      color: colorPrimary2,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(width: 4.sp),
                  Text(
                    DateTime.now().year.toString(),
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 6.sp),
              Text(
                '${timeLineFake.length.toString()} Appointment today',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100.sp),
            child: Image.asset(
              AssetsIconImage.avatarUser,
              height: 30.sp,
              width: 30.sp,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
