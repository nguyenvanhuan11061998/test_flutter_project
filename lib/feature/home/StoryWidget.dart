
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatefulWidget {
  @override
  StoryWidgetState createState() => StoryWidgetState();
}

class StoryWidgetState extends State<StoryWidget>{

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: FittedBox(
        child: Container(
          padding: EdgeInsets.all(10),
          width: 80,
          height: 106,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                // AspectRatio : set kích thước item con ăn theo kích thước cha, đúng tỉ lệ
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipOval(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF405de6),
                            Color(0xFF833ab4),
                            Color(0xFFe1306c),
                          ]
                        )
                      ),
                      child: CircleAvatar(
                        backgroundImage : AssetImage('assets/sample/ic_avatar_1.jpg')),
                      padding: EdgeInsets.all(2),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10), child: Text("Dang Ngoc Duc fdfdssffsfdsffds",
                  style: Theme.of(context).textTheme.caption?.copyWith(
                      color: Colors.black,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis))

            ],
          ),
        ),
        fit: BoxFit.scaleDown,
      ),
      onTap: () {

      },
    );
  }
}