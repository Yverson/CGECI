import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShWalkThroughScreen.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShImages.dart';

import 'ShHomeScreen.dart';

class ShSplashScreen extends StatefulWidget {
  static String tag = '/ShophopSplash';

  @override
  ShSplashScreenState createState() => ShSplashScreenState();
}

class ShSplashScreenState extends State<ShSplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    finish(context);
    ShWalkThroughScreen().launch(context);
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(Colors.black);
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width + width * 0.4,
        child: Stack(
          children: <Widget>[
            new Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 86, 98,1)

            ),
          ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(splash_bg, width: width * 0.80)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
