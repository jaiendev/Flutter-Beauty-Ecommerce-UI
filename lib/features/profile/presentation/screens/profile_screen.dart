import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/constants.dart';
import 'package:lotus_application/core/utils/app_bar/app_bar_none.dart';
import 'package:lotus_application/core/utils/switch_button.dart';
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
  bool _isLightTheme = true;
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderProfile(),
          SizedBox(height: 10.sp),
          const ContainerProfile(),
          SizedBox(height: 15.sp),
          dividerChatBig,
          SizedBox(height: 15.sp),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.sp),
            padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 8.sp),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.sp),
              border: Border.all(width: 0.2.sp, color: colorPrimary2),
              boxShadow: [
                BoxShadow(
                  color: colorPrimary2.withOpacity(0.15),
                  spreadRadius: 0.4,
                  blurRadius: 6,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
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
                  icon: PhosphorIcons.light.sun,
                  title: 'LightTheme',
                  widgetAfter: SwitchButton(
                    value: _isLightTheme,
                    onToggle: (val) {
                      setState(() {
                        _isLightTheme = val;
                      });
                    },
                    text: null,
                  ),
                ),
                _buttonProfile(
                  icon: PhosphorIcons.light.question,
                  title: 'Help center',
                ),
              ],
            ),
          )
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
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: 7.sp),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: colorPrimary,
            ),
            padding: EdgeInsets.all(9.sp),
            child: Icon(
              icon,
              color: colorPrimary2,
              size: 14.sp,
            ),
          ),
          SizedBox(width: 10.sp),
          Text(
            title,
            style: TextStyle(
              color: colorPrimary2,
              fontSize: 11.sp,
            ),
          ),
          const Spacer(),
          widgetAfter ??
              Icon(
                PhosphorIcons.light.caretRight,
                size: 13.sp,
              )
        ],
      ),
    );
  }
}
