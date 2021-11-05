import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:async/async.dart';

class SingInPage extends StatefulWidget {
  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  bool isSigning = false;

  @override
  Widget build(BuildContext context) {
    // OutlineInputBorder : vẽ một viền hình chữ nhật quanh đối tượng gọi đến nó
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return Scaffold(
      // IgnorePointer: widget cho phép bỏ qua các sự kiệ chạm, click của người dùng vào các widget con bên trong nó
      body: IgnorePointer(
        //SafeArea : widget tự động thêm padding để giúp các widget con trong nó không bị che bởi các phần thiết kế của điện thoại
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                Flexible(child: Container(), flex: 1),
                SvgPicture.asset("assets/icons/ic_instagram.svg",
                color: Colors.black,
                  height: 32,
                ),
                SizedBox(height: 64),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email or username',
                    border: inputBorder,
                    focusedBorder: inputBorder,
                    enabledBorder: inputBorder,
                    filled: true,
                    contentPadding: EdgeInsets.all(10)
                  ),
                ),
                SizedBox(height: 24),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: inputBorder,
                    focusedBorder: inputBorder,
                    enabledBorder: inputBorder,
                    filled: true,
                    contentPadding: EdgeInsets.all(10)
                  ),
                ),
                SizedBox(height: 32),
                // đối tượng tạo hiệu ứng (gợn sóng) khi click
                InkWell(
                  child: Container(
                    child: (isSigning == null || isSigning == false ? 
                        Text('Sign in', style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white)):
                    // tạo một progress bar type loading.
                    CupertinoActivityIndicator()),
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    // tạo khung trong container
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),

                      // tạo màu chuyển dần theo list màu setup
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF405de6),
                          Color(0xFF833ab4),
                          Color(0xFFe1306c),
                        ]
                      )
                    ),
                  ),
                  onTap: () {

                  },
                ),
                Flexible(child: Container(),flex: 1,)
              ],
            ),
          ),
        ),
        ignoring: false, // cho phép nhận sự kiện click
      ),
    );
  }
}
