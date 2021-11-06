
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter_project/untils/IconsApp.dart';

class FooterWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [
          SvgPicture.asset(
            IconsApp.icFavorite,
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SvgPicture.asset(
              IconsApp.icComment,
              color: Colors.black,
              height: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SvgPicture.asset(
              IconsApp.icSend,
              color: Colors.black,
              height: 24,
            ),
          ),
          Flexible(child: Container(), flex: 1),
          IconButton(icon: Icon(Icons.bookmark_border), onPressed: (){})
        ],
      ),
    );
  }

}