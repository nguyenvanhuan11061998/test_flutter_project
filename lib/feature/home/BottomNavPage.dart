import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_project/untils/IconsApp.dart';
import 'package:tuple/tuple.dart';

import 'ButtomNavigationItem.dart';
import 'HomePage.dart';

class BottomNavPage extends StatefulWidget {
  @override
  BottomNavPageState createState() => BottomNavPageState();

  VoidCallback onClickCamera;

  BottomNavPage(this.onClickCamera);
}

class BottomNavPageState extends State<BottomNavPage> {
  int _currentTabIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  List<Tuple2<String, String>> tabsIcon = [
    Tuple2(IconsApp.icHome, IconsApp.icHomeSelected),
    Tuple2(IconsApp.icSearch, IconsApp.icSearchSelected),
    Tuple2(IconsApp.icCreatePost, IconsApp.icCreatePost),
    Tuple2(IconsApp.icFavorite, IconsApp.icFavoriteSelected),
    Tuple2(IconsApp.icAccount, IconsApp.icAccountSelected)
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          if(index <= 1) {
            setState(() {
              _currentTabIndex = index;
            });
          } else {
            _currentTabIndex = index + 1;
          }
        },
        children: [
          HomePage(widget.onClickCamera)
        ],
      ),
      bottomNavigationBar: Material(
        elevation: 4,
        color: Theme.of(context).bottomAppBarColor,
        child: SafeArea(
          child: Container(
            height: 56,
            child: Row(
              children: [
                Expanded(
                  child: BottomNavigationItem(
                      tabsIcon[0], 0 == _currentTabIndex, () {
                        setState(() {
                          _currentTabIndex = 0;
                          _pageController.jumpToPage(0);
                        });
                  }),
                ),
                Expanded(
                  child: BottomNavigationItem(
                      tabsIcon[1], 1 == _currentTabIndex, () {
                    setState(() {
                      _currentTabIndex = 1;
                      _pageController.jumpToPage(1);
                    });
                  }),
                ),
                Expanded(
                  child: BottomNavigationItem(
                      tabsIcon[2], 2 == _currentTabIndex, () {
                    setState(() {
                      _currentTabIndex = 2;
                      _pageController.jumpToPage(2);
                    });
                  }),
                ),
                Expanded(
                  child: BottomNavigationItem(
                      tabsIcon[3], 3 == _currentTabIndex, () {
                    setState(() {
                      _currentTabIndex = 3;
                      _pageController.jumpToPage(3);
                    });
                  }),
                ),
                Expanded(
                  child: BottomNavigationItem(
                      tabsIcon[4], 4 == _currentTabIndex, () {
                    setState(() {
                      _currentTabIndex = 4;
                      _pageController.jumpToPage(3);
                    });
                  }),
                )
              ],
            ),
          ),
          bottom: true,
        ),
      ),
    );
  }
}
