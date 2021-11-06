
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter_project/feature/home/DirectPage.dart';
import 'package:test_flutter_project/untils/IconsApp.dart';

class HeaderWidget extends StatefulWidget with PreferredSizeWidget{

  @override
  HeaderWidgetState createState() => HeaderWidgetState();

  final VoidCallback onCameraClick;

  HeaderWidget(this.onCameraClick);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(48);
}

class HeaderWidgetState extends State<HeaderWidget>{

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              InkResponse(
                child: SvgPicture.asset(
                  IconsApp.icCamera,
                  color: Colors.black,
                  height: 24,
                ),
                onTap: () {
                  widget.onCameraClick();
                },
              ),
              Flexible(child: Container(), flex: 1),
              SvgPicture.asset(
                IconsApp.logoInsta,
                height: 24,
              ),
              Flexible(child: Container(), flex: 1),
              InkResponse(
                child: SvgPicture.asset(
                  IconsApp.icSend,
                  color: Colors.black,
                  height: 24,
                ),
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(builder: (context) => DirectPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}