import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/features/home/presentation/widgets/button_have_badges.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class SchedulesScreen extends StatelessWidget {
  const SchedulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Schedules',
          style: TextStyle(
            color: colorPrimary2,
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0.5.sp,
        actions: [
          ButtonHaveBadges(
            icon: PhosphorIcons.light.bellSimpleRinging,
            badges: 5,
            onTap: () {},
            margin: EdgeInsets.only(top: 9.sp, right: 7.sp),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 12.sp),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buttonNextPreviousMonth(icon: PhosphorIcons.light.caretLeft),
                Text(
                  'August 2023',
                  style: TextStyle(
                    color: colorPrimary2,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                _buttonNextPreviousMonth(icon: PhosphorIcons.light.caretRight),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonNextPreviousMonth({
    required IconData icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 0.7.sp,
          color: colorPrimary2,
        ),
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.all(6.sp),
      child: Icon(
        icon,
        color: colorPrimary2,
        size: 12.sp,
      ),
    );
  }
}
