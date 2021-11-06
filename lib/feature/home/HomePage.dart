
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FeedWidget.dart';
import 'HeaderWidget.dart';
import 'HomeStoryWidget.dart';

class HomePage extends StatefulWidget {

  @override
  HomePageState createState() => HomePageState();

  final VoidCallback onCameraClick;

  HomePage(this.onCameraClick);
}

class HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(() {
        // print("fdhfksfhs");
       widget.onCameraClick();
      }),
      // layout cho việc reload data
      body: RefreshIndicator(
        // layout cho phép kéo xuống mở rộng màn hình  = ScrollView
        child: SingleChildScrollView(
          child: Column (
            children: [
              HomeStoryWidget(),
              FeedWidget(),
              FeedWidget()
            ],
          ),
        ),
        onRefresh: () async {

        },
      )
    );
  }
}