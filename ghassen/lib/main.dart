import 'package:flutter/material.dart';
import 'package:ghassen/pages/Home/HomePage.dart';
import 'package:ghassen/pages/login/login.dart';

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
      home: Login(),
      routes: {
        Login.routeName: (context) => Login(),
        Home.routeName: (context) => Home(),
        ProjectPage.routeName: (context) => ProjectPage(),
      },
    );
  }
}
