
import 'package:flutter/material.dart';
import 'package:test_flutter_project/model/Conversation.dart';
import 'package:test_flutter_project/model/UserItem.dart';

class ChatBloc extends ChangeNotifier {

  late List<Conversation> conversation;

  ChatBloc() {
    //region Fake Data
    conversation = [
      Conversation(
          userModel: UserItem(
              'dangngocduc.bk@gmail.com',
              'dangngocduc',
              'assets/sample/ic_avatar_1.jpg',
              'Dang Ngoc Duc'
          ),
          isActive: true,
          lastActive: DateTime.now()
      ),
      Conversation(
          userModel: UserItem(
              'dangngocduc.bk@gmail.com',
              'dangngocduc',
              'assets/sample/ic_avatar_1.jpg',
              'Mola Mola'
          ),          isActive: true,
          lastActive: DateTime.now()
      ),
      Conversation(
          userModel: UserItem(
              'dangngocduc.bk@gmail.com',
              'dangngocduc',
              'assets/sample/ic_avatar_1.jpg',
              'Hoang Anh'
          ),          isActive: true,
          lastActive: DateTime.now()
      ),
      Conversation(
          userModel: UserItem(
              'dangngocduc.bk@gmail.com',
              'dangngocduc',
              'assets/sample/ic_avatar_1.jpg',
              'Pencil Academy'
          ),          isActive: true,
          lastActive: DateTime.now()
      )
    ];
  }

}

