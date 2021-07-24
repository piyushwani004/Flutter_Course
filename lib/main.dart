import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/": (context) => LoginPage(),
        MyRouts.loginRouts: (context) => LoginPage(),
        MyRouts.homeRouts: (context) => HomePage(),
      },
    );
  }
}

