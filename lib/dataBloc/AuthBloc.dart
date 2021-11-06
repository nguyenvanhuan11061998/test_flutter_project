
import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_flutter_project/model/UserItem.dart';

class AuthBloc extends ChangeNotifier{

  Duration _duration = Duration(seconds: 0);

  AuthBloc() {
    signIn("dangngocduc", "dangngocduc");
  }

  /**
   * Result : cung cấp các quyền truy cập vào userItem
   */
  Result<UserItem?>? userItem;

  /**
   * ResultFuture<bool> : trả ra một giá trị type bool theo dạng đồng bộ
   * giá trị trả về là kết quả của future trong ResultFuture
   */
  ResultFuture<bool> signIn(String name, String password) {
    return ResultFuture<bool> (
      Future.delayed(_duration, () {
        userItem = Result.value(UserItem(
            'dangngocduc.bk@gmail.com',
            '$name',
            'assets/sample/ic_avatar_1.jpg',
            'Dang Ngoc Duc'
        ));
        notifyListeners();
        return true;
      })
    );
  }
}