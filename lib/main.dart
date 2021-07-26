import 'package:first_flutter_project/widgets/myTheme.dart';
import 'package:flutter/material.dart';

import 'package:first_flutter_project/Pages/home_Page.dart';
import 'package:first_flutter_project/utils/my_routs.dart';

import 'Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => HomePage(),
        MyRouts.loginRouts: (context) => LoginPage(),
        MyRouts.homeRouts: (context) => HomePage(),
      },
    );
  }
}
