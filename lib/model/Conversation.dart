
import 'UserItem.dart';

class Conversation {

  UserItem userModel;

  bool isActive;

  DateTime lastActive;

  Conversation({required this.userModel, required this.isActive, required this.lastActive});
}