import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter_project/dataBloc/AuthBloc.dart';
import 'package:test_flutter_project/dataBloc/ChatBloc.dart';
import 'package:test_flutter_project/feature/home/BottomNavPage.dart';
import 'package:test_flutter_project/feature/home/CameraBarPage.dart';
import 'package:async/async.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currentPage = 1;

  // Controller control page view
  late PageController _pageController;

  late ResultFuture<bool> signIn;


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _pageController = PageController(initialPage: currentPage);
  }

  @override
  Widget build(BuildContext context) {
    // WillPopScope: Ghi đè button quay lại
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) {
            return AuthBloc();
          },
          lazy: false),

          ChangeNotifierProvider(create: (context) {
            return ChatBloc();
          },
          lazy: false)
        ],
        child: MaterialApp(
          home: WillPopScope(
            onWillPop: () async {
              return true;
            },
            child: Scaffold(
              // tạo list màn hình , bằng với pageView android
              body: PageView(
                // tắt scroll page view
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (current) {
                  currentPage = current;
                },
                children: [
                  CameraBarPage(() {
                    // select to page1
                    _pageController.animateToPage(1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  }),
                  BottomNavPage(() {
                    _pageController.animateToPage(0,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  })
                ],
              ),
            ),
          ),
        ));
  }
}
