

import 'package:flutter/cupertino.dart';
import 'package:test_flutter_project/model/Driver.dart';

class UserModel extends ChangeNotifier {
  List<User> listUser = [];

  void getList() => listUser;

  void setListUser(List<User> listUser) {
    this.listUser = listUser;
    notifyListeners();
  }
}