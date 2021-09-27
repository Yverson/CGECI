import 'package:cgeci/fullApps/shopHop/utils/ShStrings.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/main/utils/dots_indicator/dots_indicator.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShHomeScreen.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';

class ShWalkThroughScreen extends StatefulWidget {
  static var tag = "/ShWalkThroughScreen";

  @override
  _ShWalkThroughScreenState createState() => _ShWalkThroughScreenState();
}

class _ShWalkThroughScreenState extends State<ShWalkThroughScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;
  static const _kDuration = const Duration(seconds: 1);
  static const _kCurve = Curves.ease;

  @override
  void initState() {
    super.initState();
    changeStatusColor(Colors.transparent);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (i) {
              currentPage = i;

              if(currentPage == 3)
                {

                  ShHomeScreen().launch(context);
                }

              setState(() {});
            },
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("images/cgeci/logocgeci21.png", width: context.width() * 0.80)
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("images/cgeci/logoOrange.png", width: context.width() * 0.80)
                  ],
                ),
              ),
              Stack(children: <Widget>[
                new Container(
                  decoration: BoxDecoration(color: Color.fromRGBO(0, 86, 98,1)),
                ),
                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/cgeci/slidelogo3.png", width: context.width() * 0.80)
                      ],
                    ),
                  ),
                ],
              ),
                ]),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container()
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 90,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: DotsIndicator(
                dotsCount: 4,
                position: currentPage,
                decorator: DotsDecorator(
                  color: Colors.grey.shade600,
                  activeColor: sh_colorAccent,
                  size: Size.square(9.0),
                  activeSize: Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Text('Passer', style: TextStyle(color: BHAppTextColorSecondary)),
                  onPressed: () {
                    finish(context);
                    ShHomeScreen().launch(context);
                  },
                ),
                TextButton(
                  child: Text(BHBtnNext, style: TextStyle(color: BHAppTextColorSecondary)),
                  onPressed: () {
                    _pageController.nextPage(duration: _kDuration, curve: _kCurve);
                  },
                )
              ],
            ).visible(
              currentPage != 2,
              defaultWidget: Container(
                margin: EdgeInsets.only(),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 270,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(50, 157, 156,1),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      ),
                      onPressed: () {
                        ShHomeScreen().launch(context);
                      },
                      child: Text("Commencer", style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
