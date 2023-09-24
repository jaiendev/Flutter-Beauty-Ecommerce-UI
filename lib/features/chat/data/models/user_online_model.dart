// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lotus_application/core/app/constants/assets_icon_image.dart';

class UserOnlineModel {
  final String image;
  final String fullName;
  final int countStory;
  final int indexHasSeen;
  UserOnlineModel({
    required this.image,
    required this.fullName,
    required this.countStory,
    required this.indexHasSeen,
  });
}

List<UserOnlineModel> listUserOnlineFake = [
  UserOnlineModel(
    image: AssetsIconImage.avatarUser1,
    fullName: 'Zahri.h',
    countStory: 1,
    indexHasSeen: 1,
  ),
  UserOnlineModel(
    image: AssetsIconImage.avatarUser2,
    fullName: 'Hodden',
    countStory: 4,
    indexHasSeen: 2,
  ),
  UserOnlineModel(
    image: AssetsIconImage.avatarUser3,
    fullName: 'Peter.R',
    countStory: 4,
    indexHasSeen: 0,
  ),
  UserOnlineModel(
    image: AssetsIconImage.avatarUser4,
    fullName: 'Joden.R',
    countStory: 4,
    indexHasSeen: 1,
  ),
  UserOnlineModel(
    image: AssetsIconImage.avatarUser1,
    fullName: 'Zahri.h',
    countStory: 1,
    indexHasSeen: 1,
  ),
  UserOnlineModel(
    image: AssetsIconImage.avatarUser2,
    fullName: 'Hodden',
    countStory: 4,
    indexHasSeen: 2,
  ),
  UserOnlineModel(
    image: AssetsIconImage.avatarUser3,
    fullName: 'Peter.R',
    countStory: 4,
    indexHasSeen: 0,
  ),
  UserOnlineModel(
    image: AssetsIconImage.avatarUser4,
    fullName: 'Joden.R',
    countStory: 4,
    indexHasSeen: 1,
  ),
  UserOnlineModel(
    image: AssetsIconImage.avatarUser1,
    fullName: 'Zahri.h',
    countStory: 1,
    indexHasSeen: 1,
  ),
  UserOnlineModel(
    image: AssetsIconImage.avatarUser2,
    fullName: 'Hodden',
    countStory: 4,
    indexHasSeen: 2,
  ),
  UserOnlineModel(
    image: AssetsIconImage.avatarUser3,
    fullName: 'Peter.R',
    countStory: 4,
    indexHasSeen: 0,
  ),
  UserOnlineModel(
    image: AssetsIconImage.avatarUser4,
    fullName: 'Joden.R',
    countStory: 4,
    indexHasSeen: 1,
  ),
];
