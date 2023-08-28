import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class ButtonBottomNavigator extends StatelessWidget {
  final IconData icon;
  final int index;
  final IconData iconClicked;
  final Function(int) onTap;
  final bool hasClicked;
  const ButtonBottomNavigator({
    super.key,
    required this.icon,
    required this.index,
    required this.iconClicked,
    required this.onTap,
    required this.hasClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onTap(index);
        },
        child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(
            vertical: 10.sp,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                hasClicked ? iconClicked : icon,
                color: hasClicked ? colorPrimary2 : Colors.grey.shade500,
                size: 20.sp,
              ),
              SizedBox(height: 3.sp),
              !hasClicked
                  ? const SizedBox()
                  : Container(
                      height: 3.sp,
                      width: 3.sp,
                      decoration: const BoxDecoration(
                        color: colorPrimary2,
                        shape: BoxShape.circle,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
