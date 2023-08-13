import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/constants.dart';
import 'package:lotus_application/core/utils/app_bar/app_bar_none.dart';
import 'package:lotus_application/features/profile/presentation/widgets/container_profile.dart';
import 'package:lotus_application/features/profile/presentation/widgets/header_profile.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarNone(
        context: context,
        brightness: Brightness.light,
        // backgroundColor: colorPrimary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const HeaderProfile(),
          SizedBox(height: 10.sp),
          const ContainerProfile(),
          SizedBox(height: 15.sp),
          dividerChatBig,
          SizedBox(height: 15.sp),
          _buttonProfile(
            icon: PhosphorIcons.light.identificationCard,
            title: 'My profile',
          ),
          _buttonProfile(
            icon: PhosphorIcons.light.lockKey,
            title: 'Change password',
          ),
          _buttonProfile(
            icon: PhosphorIcons.light.globe,
            title: 'Change language',
          ),
          _buttonProfile(
            icon: PhosphorIcons.light.gearSix,
            title: 'Settings',
          ),
          _buttonProfile(
            icon: PhosphorIcons.light.question,
            title: 'Help center',
          ),
        ],
      ),
    );
  }

  Widget _buttonProfile({
    required IconData icon,
    required String title,
    Widget? widgetAfter,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.sp).add(
        EdgeInsets.only(bottom: 10.sp),
      ),
      width: double.infinity,
      height: 49.sp,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30.sp, right: 12.sp).add(
              EdgeInsets.symmetric(vertical: 18.sp),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.sp),
              boxShadow: [
                BoxShadow(
                  color: colorPrimary2.withOpacity(0.15),
                  spreadRadius: 0.4,
                  blurRadius: 8,
                  offset: const Offset(
                    0,
                    3,
                  ), // changes position of shadow
                ),
              ],
            ),
            margin: EdgeInsets.only(left: 20.sp),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: colorPrimary2,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                widgetAfter ??
                    Icon(
                      PhosphorIcons.fill.caretRight,
                      color: colorPrimary2,
                      size: 13.sp,
                    )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                color: colorPrimary,
                shape: BoxShape.circle,
                border: Border.all(width: 1.2.sp, color: Colors.white),
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
              height: 40.sp,
              width: 40.sp,
              child: Icon(
                icon,
                color: colorPrimary2,
                size: 17.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
