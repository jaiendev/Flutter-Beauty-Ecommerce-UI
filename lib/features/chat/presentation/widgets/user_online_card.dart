import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/utils/circle_border.dart';
import 'package:lotus_application/features/chat/data/models/user_online_model.dart';
import 'package:sizer/sizer.dart';

class UserOnlineCard extends StatelessWidget {
  final UserOnlineModel user;
  final bool isMe;
  const UserOnlineCard({super.key, required this.user, this.isMe = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.sp),
      margin: EdgeInsets.only(right: 7.sp),
      child: Column(
        children: [
          CircularBorder(
            size: 45.sp,
            image: user.image,
            countParts: user.countStory,
            isMe: isMe,
            indexHasSeen: user.indexHasSeen,
          ),
          SizedBox(height: 3.sp),
          Text(
            user.fullName,
            style: TextStyle(
              color: colorPrimary2,
              fontSize: 9.sp,
            ),
          ),
        ],
      ),
    );
  }
}
