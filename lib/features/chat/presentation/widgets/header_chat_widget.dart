import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class HeaderChatWidget extends StatelessWidget {
  const HeaderChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.sp),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              cursorColor: colorPrimary2,
              style: TextStyle(
                color: colorPrimary2,
                fontSize: 10.5.sp,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.sp,
                  vertical: 12.sp,
                ),
                hintText: 'Search chat or something here',
                hintStyle: TextStyle(
                  color: colorGrey.withOpacity(0.4),
                  fontSize: 10.5.sp,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.sp),
                  borderSide: BorderSide(
                    width: 0.3.sp,
                    color: colorGrey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.sp),
                  borderSide: BorderSide(
                    width: 0.3.sp,
                    color: colorGrey,
                  ),
                ),
                prefixIcon: PhosphorIcon(
                  PhosphorIcons.light.magnifyingGlass,
                  color: colorPrimary2,
                  size: 17.sp,
                ),
                suffixIcon: PhosphorIcon(
                  PhosphorIcons.light.slidersHorizontal,
                  color: colorPrimary2,
                  size: 17.sp,
                ),
              ),
            ),
          ),
          SizedBox(width: 5.sp),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.3.sp,
                color: colorGrey,
              ),
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(11.sp),
            child: Icon(
              PhosphorIcons.light.bellSimpleRinging,
              size: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
