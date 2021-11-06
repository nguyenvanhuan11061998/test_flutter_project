import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'StoryWidget.dart';

class HomeStoryWidget extends StatefulWidget {
  @override
  HomeStoryWidgetState createState() => HomeStoryWidgetState();
}

class HomeStoryWidgetState extends State<HomeStoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // list view có khoảng cách và set custom được item khoảng cách đó
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        // itemBuilder: item của list view
        itemBuilder: (context, index) => StoryWidget(),
        // item phụ giữa các item chính
        separatorBuilder: (context, index) => SizedBox(width: 8, height: 0),
        itemCount: 20,
        physics: BouncingScrollPhysics(),
      ),
      height: 96,
    );
  }
}
