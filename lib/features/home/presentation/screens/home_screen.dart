import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/utils/app_bar/app_bar_none.dart';
import 'package:lotus_application/features/home/presentation/widgets/deal_hot.dart';
import 'package:lotus_application/features/home/presentation/widgets/famous_branch.dart';
import 'package:lotus_application/features/home/presentation/widgets/header_home.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarNone(
        context: context,
        brightness: Brightness.light,
        backgroundColor: colorPrimary,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const HeaderHome(),
                SizedBox(height: 15.sp),
                const FamousBranch(),
                SizedBox(height: 10.sp),
                const DealHot(),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: colorPrimary,
                  borderRadius: BorderRadius.circular(10.sp),
                  boxShadow: [
                    BoxShadow(
                      color: colorPrimary2.withOpacity(0.15),
                      spreadRadius: 0.4,
                      blurRadius: 6,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 5.sp,
                  horizontal: 16.sp,
                ),
                child: Row(
                  children: [
                    _buttonBottomNavigator(
                      icon: PhosphorIcons.light.house,
                      index: 0,
                    ),
                    _buttonBottomNavigator(
                      icon: PhosphorIcons.light.calendarCheck,
                      index: 1,
                    ),
                    _buttonBottomNavigator(
                      icon: PhosphorIcons.light.chatTeardropDots,
                      index: 2,
                    ),
                    _buttonBottomNavigator(
                      icon: PhosphorIcons.light.userCircle,
                      index: 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonBottomNavigator({required IconData icon, required int index}) {
    return Expanded(
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(
          vertical: 10.sp,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color:
                  index == _currentIndex ? colorPrimary2 : Colors.grey.shade400,
              size: 20.sp,
            ),
            SizedBox(height: 3.sp),
            index != _currentIndex
                ? const SizedBox()
                : Container(
                    height: 3.sp,
                    width: 3.sp,
                    decoration: const BoxDecoration(
                      color: colorPrimary2,
                      shape: BoxShape.circle,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
