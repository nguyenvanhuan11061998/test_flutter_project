
import 'package:flutter/cupertino.dart';

class BodyInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      // lấy khung hình tỉ lệ 11 bằng các lấy chiều rộng ảnh
      aspectRatio: 1,
      child: Image.asset('assets/sample/search_demo1.jpg', fit: BoxFit.cover),
    );
  }
}