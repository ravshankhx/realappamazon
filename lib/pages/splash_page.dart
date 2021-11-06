import 'dart:async';

import 'package:flutter/material.dart';
import 'package:realappamazon/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  static final String id = "splash_image";
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _initTimer(){
    Timer(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, HomePage.id);
    });

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Stack(
          children: [
            Center(
              child: Image.asset("assets/images/ic_logoa.png",height: 80,width: 80,),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text('From Amazon',style: TextStyle(color: Colors.black,fontSize: 20),),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
