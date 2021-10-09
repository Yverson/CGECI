import 'package:cgeci/fullApps/shopHop/screens/ShCartScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShImages.dart';
import 'package:cgeci/main/utils/dots_indicator/dots_indicator.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';

import 'ShEmailScreen.dart';
import 'ShOffersScreen.dart';
import 'ShSignUp.dart';

class ShHomeFragment extends StatefulWidget {
  static String tag = '/ShHomeFragment';

  @override
  ShHomeFragmentState createState() => ShHomeFragmentState();
}
class PCDashboardModel {
  var icon = "";
  var title = "";

  PCDashboardModel(this.icon, this.title);
}

class ShHomeFragmentState extends State<ShHomeFragment> {
  var position = 0;
  var colors = [sh_cat_1, sh_cat_2, sh_cat_3, sh_cat_4, sh_cat_5];
  PageController pageController = PageController();

  int selectedIndex = 0;
  List<Widget> pages = [];
  late List<PCDashboardModel> mList2;
  late List<PCDashboardModel> mList;

  @override
  void initState() {
    pages = [
      Container(
          child: Image.asset(SampleImageUrl,
              height: isMobile ? 150 : 350, fit: BoxFit.cover)),
      Container(
          child: Image.asset(SampleImageUrl2,
              height: isMobile ? 150 : 350, fit: BoxFit.cover)),
      Container(
          child: Image.asset(SampleImageUrl3,
              height: isMobile ? 150 : 350, fit: BoxFit.cover)),
      Container(
          child: Image.asset(SampleImageUrl4,
              height: isMobile ? 150 : 350, fit: BoxFit.cover)),
    ];

    super.initState();
    List<PCDashboardModel> list = [];

    var title = PCDashboardModel("", "LE FORUM ?");
    list.add(title);

    var title1 = PCDashboardModel("", "POUQUOI PARTICIPER ?");
    list.add(title1);

    //var title2 = PCDashboardModel("", "POURQUOI EXPOSER ?");
    //list.add(title2);

    //var title3 = PCDashboardModel("", "QUI VISITE ?");
    //list.add(title3);

    var title4 = PCDashboardModel("", "QUI EXPOSE ?");
    list.add(title4);

    var title5 = PCDashboardModel("", "OBTENIR MON BADGE");
    list.add(title5);

    mList2 = list;

    list = [];
    var list1 = PCDashboardModel("", "images/cgeci/img1.png");
    list.add(list1);

    // var list2 = PCDashboardModel("", "images/cgeci/img2.png");
    // list.add(list2);
    //
    // var list3 = PCDashboardModel("", "images/cgeci/img3.png");
    // list.add(list3);
    //
    // var list4 = PCDashboardModel("", "images/cgeci/img4.png");
    // list.add(list4);

    mList= list;

  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }


  Text profile(var label) {
    return Text(label, style: TextStyle(color: sh_colorPrimary, fontSize: 18, fontFamily: 'Medium'), textAlign: TextAlign.center);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(children: <Widget>[
      new Container(
        decoration: BoxDecoration(color: Color.fromRGBO(0, 86, 98,1)),
      ),
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      height: 230,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          PageView(
                            controller: pageController,
                            scrollDirection: Axis.horizontal,
                            children: pages,
                            onPageChanged: (index) {
                              selectedIndex = index;
                              setState(() {});
                            },
                          ).cornerRadiusWithClipRRect(8),
                        ],
                      ),
                    ),
                    // DotsIndicator(
                    //   dotsCount: 4,
                    //   position: selectedIndex,
                    //   decorator: DotsDecorator(
                    //     color: sh_white,
                    //     activeColor: sh_colorAccent,
                    //     size: Size.square(9.0),
                    //     activeSize: Size(18.0, 9.0),
                    //     activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                width: width,
                decoration: BoxDecoration(color: sh_white),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(height: 50),
                    Text("EN 2019, C'ETAIT",
                        style: primaryTextStyle(
                            color: sh_greenCgeci,
                            size: 30,
                            fontFamily: 'Medium')),
                    SizedBox(height: 25),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),//or 15.0
                              child: Container(
                                height: width * 0.1875,
                                width: width * 0.1875,
                                color: sh_greenCgeci,
                                child: Image.asset("images/cgeci/ceo.png", width: width / 5.3),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("+4000",
                                style: primaryTextStyle(
                                    color: sh_colorAccent,
                                    size: (width * 0.0416666666666667).toInt() ,
                                    fontFamily: 'Bold')),
                            Text("CEO",
                                style: primaryTextStyle(
                                    color: sh_colorAccent,
                                    size: (width * 0.025).toInt(),
                                    fontFamily: 'Medium'))
                          ],
                        ),
                        SizedBox(width: (width * 0.025)),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),//or 15.0
                              child: Container(
                                height: width * 0.1875,
                                width: width * 0.1875,
                                color: sh_greenCgeci,
                                child: Image.asset("images/cgeci/yceo.png", width: width / 5.3),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("+3000",
                                style: primaryTextStyle(
                                    color: sh_colorAccent,
                                    size: (width * 0.0416666666666667).toInt(),
                                    fontFamily: 'Bold')),
                            Text("YCEO",
                                style: primaryTextStyle(
                                    color: sh_colorAccent,
                                    size: (width * 0.025).toInt(),
                                    fontFamily: 'Medium'))
                          ],
                        ),
                        SizedBox(width: (width * 0.025)),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),//or 15.0
                              child: Container(
                                height: width * 0.1875,
                                width: width * 0.1875,
                                color: sh_greenCgeci,
                                child: Image.asset("images/cgeci/pays.png", width: width / 5.3),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("+10 PAYS",
                                style: primaryTextStyle(
                                    color: sh_colorAccent,
                                    size: (width * 0.0416666666666667).toInt(),
                                    fontFamily: 'Bold')),
                            Text("PARTICIPANTS",
                                style: primaryTextStyle(
                                    color: sh_colorAccent,
                                    size: (width * 0.025).toInt(),
                                    fontFamily: 'Medium'))
                          ],
                        ),
                        SizedBox(width: (width * 0.025)),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),//or 15.0
                              child: Container(
                                height: width * 0.1875,
                                width: width * 0.1875,
                                color: sh_greenCgeci,
                                child: Image.asset("images/cgeci/patronat.png", width: 50),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("+100",
                                style: primaryTextStyle(
                                    color: sh_colorAccent,
                                    size: (width * 0.0416666666666667).toInt(),
                                    fontFamily: 'Bold')),
                            Text("MEMBRES DE",
                                style: primaryTextStyle(
                                    color: sh_colorAccent,
                                    size: (width * 0.025).toInt(),
                                    fontFamily: 'Medium')),
                            Text("DELEGATIONS",
                                style: primaryTextStyle(
                                    color: sh_colorAccent,
                                    size: (width * 0.025).toInt(),
                                    fontFamily: 'Medium')),
                            Text("PATRONALES",
                                style: primaryTextStyle(
                                    color: sh_colorAccent,
                                    size: (width * 0.025).toInt(),
                                    fontFamily: 'Medium'))
                          ],
                        ),
                        SizedBox(width: (width * 0.025)),
                      ],
                    ),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: mList2.length,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) => GestureDetector(
                        onTap: () {
                          print(index);
                          if (index == 0)
                            ShEmailScreen().launch(context);
                          else if (index == 1)
                            ShOffersScreen().launch(context);
                          else if (index == 2)
                            ShCartScreen().launch(context);
                          else if (index == 3)
                            ShSignUp().launch(context);

                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
                          decoration: boxDecorationWithRoundedCorners(backgroundColor: sh_greenCgeci, borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(mList2[index].title, style: primaryTextStyle(size: 18, color: sh_white, fontFamily: "Medium")).paddingOnly(left: 8.0),
                                ],
                              ),
                              Container(
                                width: 32,
                                height: 32,
                                decoration: boxDecorationWithRoundedCorners(backgroundColor: Colors.orangeAccent, borderRadius: BorderRadius.circular(30)),
                                child: Image.asset("images/cgeci/Cricket_ic_ArrowRight.png", color: sh_white, height: 40, width: 40).paddingAll(5.0),
                              ).paddingOnly(right: 8.0)
                            ],
                          ),
                        ).cornerRadiusWithClipRRect(10.0).paddingAll(8.0)
                      ),
                    ).paddingOnly(left: 8.0, right: 8.0, bottom: 8.0)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ]));
  }
}
