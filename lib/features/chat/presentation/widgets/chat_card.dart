import 'package:flutter/material.dart';
import 'package:lotus_application/core/app/constants/app_colors.dart';
import 'package:lotus_application/core/helpers/date_time_helper.dart';
import 'package:lotus_application/features/chat/data/models/chat_model.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

class ChatCard extends StatelessWidget {
  final ChatModel chatModel;
  const ChatCard({super.key, required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.sp,
        vertical: 10.sp,
      ),
      color: chatModel.isNew && !chatModel.isSender
          ? colorPrimary.withOpacity(0.6)
          : Colors.transparent,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.sp),
            child: Image.asset(
              chatModel.image,
              height: 43.sp,
              width: 43.sp,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 6.sp),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        chatModel.chatName,
                        style: TextStyle(
                          color: colorPrimary2,
                          fontSize: 11.6.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      DateTimeHelper()
                          .getTimeChatCard(chatModel.lastMessageCreateAt),
                      style: TextStyle(
                        color: colorGrey,
                        fontSize: 9.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.sp),
                Row(
                  children: [
                    Visibility(
                      visible: chatModel.isSender,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            chatModel.isSeen
                                ? PhosphorIcons.bold.checks
                                : PhosphorIcons.bold.check,
                            color: colorPrimary2,
                            size: chatModel.isSeen ? 12.sp : 9.sp,
                          ),
                          SizedBox(width: 2.sp),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        chatModel.latestMessage,
                        style: TextStyle(
                          color: chatModel.isNew && !chatModel.isSender
                              ? Colors.lightBlue
                              : colorGrey,
                          fontSize: 10.sp,
                          fontWeight: chatModel.isNew && !chatModel.isSender
                              ? FontWeight.w600
                              : null,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: chatModel.isNew && !chatModel.isSender,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: colorPrimary2,
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(4.sp),
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
