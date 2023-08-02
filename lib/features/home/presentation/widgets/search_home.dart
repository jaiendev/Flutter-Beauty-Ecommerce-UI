import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: colorBrown1,
          borderRadius: BorderRadius.circular(8.sp),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 8.sp,
          vertical: 10.sp,
        ),
        child: Row(
          children: [
            Icon(
              PhosphorIcons.light.magnifyingGlass,
              color: colorPrimary2,
              size: 15.sp,
            ),
            SizedBox(width: 10.sp),
            Text(
              'Search...',
              style: TextStyle(
                color: colorPrimary2,
                fontSize: 12.sp,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: ColoredBox(
                color: Colors.transparent,
                child: Row(
                  children: [
                    Text(
                      'Ho Chi Minh',
                      style: TextStyle(
                        color: colorPrimary2,
                        fontSize: 10.sp,
                      ),
                    ),
                    SizedBox(width: 4.sp),
                    Icon(
                      PhosphorIcons.light.caretDown,
                      color: colorPrimary2,
                      size: 10.sp,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
