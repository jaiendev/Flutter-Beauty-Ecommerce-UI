import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';
import 'package:lotus_application/core/app/constants/constants.dart';
import 'package:lotus_application/core/utils/app_bar/app_bar_none.dart';
import 'package:lotus_application/features/chat/data/models/chat_model.dart';
import 'package:lotus_application/features/chat/data/models/user_online_model.dart';
import 'package:lotus_application/features/chat/presentation/widgets/chat_card.dart';
import 'package:lotus_application/features/chat/presentation/widgets/header_chat_widget.dart';
import 'package:lotus_application/features/chat/presentation/widgets/user_online_card.dart';
import 'package:sizer/sizer.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarNone(context: context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.sp),
          const HeaderChatWidget(),
          SizedBox(height: 14.sp),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.sp),
            child: Text(
              'RECENTS UPDATE',
              style: TextStyle(
                color: colorPrimary2,
                fontWeight: FontWeight.w600,
                fontSize: 10.sp,
                wordSpacing: 1.2.sp,
              ),
            ),
          ),
          SizedBox(height: 4.sp),
          SizedBox(
            height: 70.sp,
            child: ListView.builder(
              itemCount: listUserOnlineFake.length + 1,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 12.sp),
              itemBuilder: (context, index) {
                return index == 0
                    ? UserOnlineCard(
                        user: UserOnlineModel(
                          fullName: 'My status',
                          image: AssetsIconImage.avatarUser,
                          countStory: 4,
                          indexHasSeen: 1,
                        ),
                        isMe: true,
                      )
                    : UserOnlineCard(
                        user: listUserOnlineFake[index - 1],
                      );
              },
            ),
          ),
          dividerChat,
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listChatFake.length,
              itemBuilder: (context, index) {
                return ChatCard(chatModel: listChatFake[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
