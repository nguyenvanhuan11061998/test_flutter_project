

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter_project/model/CounterModel.dart';
import 'package:dio/dio.dart';
import 'package:test_flutter_project/model/UserModel.dart';

import 'feature/auth/SignInPage.dart';
import 'model/Driver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<CounterModel>(
              create: (context) => CounterModel()),
          ChangeNotifierProvider<UserModel>(create: (_) => UserModel())
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late UserModel userModels;

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);
    userModels = Provider.of<UserModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${counterModel.getCounter()}',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '${userModels.listUser.isNotEmpty ? userModels.listUser.elementAt(0).email : ""}',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {
                counterModel.incrementCounter();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add)),
          SizedBox(width: 30),
          FloatingActionButton(
              onPressed: () {
                counterModel.decrementCounter();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove)),
          SizedBox(width: 30),
          FloatingActionButton(
              onPressed: () {
                // onSignInPage();
                Navigator.push(context, MaterialPageRoute(builder: (context) => SingInPage())
                );
              },
              tooltip: 'Call User',
              child: const Icon(Icons.verified_user))
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<bool> _callApiWithDio() async {
    var dio = Dio();
    List<User> listUser = [];

    final response = await dio
        .get("https://614c328ee4cc2900179eb34a.mockapi.io/api/taxiapp/drivers");
    print("https://614c328ee4cc2900179eb34a.mockapi.io/api/taxiapp/drivers");

    if (response.statusCode == 200) {
      var listResult = response.data as List;

      for (var item in listResult) {
        var user = User.fromJson(item);
        listUser.add(user);
      }
    }
    userModels.setListUser(listUser);
    return true;
  }

  void onSignInPage() {
    print("new Screen");
    Navigator(
      onGenerateRoute: (setting) {
        return MaterialPageRoute(builder: (context) => SingInPage());
      },
    );
  }
}
