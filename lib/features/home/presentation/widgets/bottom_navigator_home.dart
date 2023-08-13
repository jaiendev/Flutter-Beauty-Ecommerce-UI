import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/features/home/presentation/widgets/button_bottom_navigator.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class BottomNavigatorHome extends StatelessWidget {
  final int currentIndex;
  final Function(int) onChangeBottom;

  const BottomNavigatorHome({
    super.key,
    required this.currentIndex,
    required this.onChangeBottom,
  });

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: double.infinity,
      height: 48.sp,
      borderRadius: 10.sp,
      blur: 7,
      border: 0.5.sp,
      margin: EdgeInsets.symmetric(
        horizontal: 12.sp,
        vertical: 14.sp,
      ),
      padding: EdgeInsets.zero,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          colorPrimary.withOpacity(0.7),
          colorPrimary.withOpacity(0.65),
        ],
        stops: const [
          0.4,
          1,
        ],
      ),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          colorPrimary2.withOpacity(0.7),
          colorPrimary2.withOpacity(0.7),
        ],
      ),
      child: Row(
        children: [
          ButtonBottomNavigator(
            icon: PhosphorIcons.light.house,
            iconClicked: PhosphorIcons.fill.house,
            index: 0,
            hasClicked: currentIndex == 0,
            onTap: onChangeBottom,
          ),
          ButtonBottomNavigator(
            icon: PhosphorIcons.light.calendarCheck,
            iconClicked: PhosphorIcons.fill.calendarCheck,
            index: 1,
            hasClicked: currentIndex == 1,
            onTap: onChangeBottom,
          ),
          ButtonBottomNavigator(
            icon: PhosphorIcons.light.chatTeardropDots,
            iconClicked: PhosphorIcons.fill.chatTeardropDots,
            index: 2,
            hasClicked: currentIndex == 2,
            onTap: onChangeBottom,
          ),
          ButtonBottomNavigator(
            icon: PhosphorIcons.light.wallet,
            iconClicked: PhosphorIcons.fill.wallet,
            index: 3,
            hasClicked: currentIndex == 3,
            onTap: onChangeBottom,
          ),
          ButtonBottomNavigator(
            icon: PhosphorIcons.light.userCircle,
            iconClicked: PhosphorIcons.fill.userCircle,
            index: 4,
            hasClicked: currentIndex == 4,
            onTap: onChangeBottom,
          ),
        ],
      ),
    );
  }
}
