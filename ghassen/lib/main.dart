import 'package:flutter/material.dart';
import 'package:ghassen/pages/Home/HomePage.dart';
import 'package:ghassen/pages/login/login.dart';
import 'package:ghassen/pages/login/register_page.dart';

import 'pages/Home/ProjetPage.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        RegisterPage.routeName: (context) => RegisterPage(),
        Home.routeName: (context) => Home(),
        ProjectPage.routeName: (context) => ProjectPage(),
      },
    );
  }
}
