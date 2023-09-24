// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';

class ChatModel {
  final String image;
  final String chatName;
  final DateTime lastMessageCreateAt;
  final String latestMessage;
  final bool isSeen;
  final bool isNew;
  final bool isSender;
  ChatModel({
    required this.image,
    required this.chatName,
    required this.lastMessageCreateAt,
    required this.latestMessage,
    required this.isSeen,
    required this.isNew,
    required this.isSender,
  });
}

List<ChatModel> listChatFake = [
  ChatModel(
    image: AssetsIconImage.avatarUser2,
    chatName: 'Marzuki Ali',
    lastMessageCreateAt: DateTime.now().subtract(const Duration(hours: 1)),
    latestMessage: 'What was the best year of your life?',
    isSeen: false,
    isNew: true,
    isSender: false,
  ),
  ChatModel(
    image: AssetsIconImage.avatarUser1,
    chatName: 'Lesti Kejora',
    lastMessageCreateAt: DateTime.now().subtract(const Duration(hours: 17)),
    latestMessage: 'Wow look amazing 🥰',
    isSeen: false,
    isNew: false,
    isSender: true,
  ),
  ChatModel(
    image: AssetsIconImage.avatarUser4,
    chatName: 'Zahri. K',
    lastMessageCreateAt: DateTime.now().subtract(const Duration(days: 2)),
    latestMessage: 'What was the best year of your life?',
    isSeen: true,
    isNew: false,
    isSender: false,
  ),
  ChatModel(
    image: AssetsIconImage.avatarUser3,
    chatName: 'Marzuki Ali',
    lastMessageCreateAt: DateTime.now().subtract(const Duration(days: 5)),
    latestMessage: 'What was the best year of your life?',
    isSeen: false,
    isNew: false,
    isSender: false,
  ),
  ChatModel(
    image: AssetsIconImage.avatarUser2,
    chatName: 'Lesti Kejora',
    lastMessageCreateAt: DateTime.now().subtract(const Duration(days: 8)),
    latestMessage: 'Wow look amazing 🥰',
    isSeen: true,
    isNew: false,
    isSender: true,
  ),
  ChatModel(
    image: AssetsIconImage.avatarUser4,
    chatName: 'Zahri. K',
    lastMessageCreateAt: DateTime.now().subtract(const Duration(days: 8)),
    latestMessage: 'What was the best year of your life?',
    isSeen: true,
    isNew: false,
    isSender: false,
  ),
];
