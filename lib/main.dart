import 'package:flutter/material.dart';
import 'package:realappamazon/pages/home_page.dart';
import 'package:realappamazon/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
      routes: {
        SplashPage.id: (context)=>SplashPage(),
        HomePage.id: (context)=>HomePage()
      },
    );
  }
}
