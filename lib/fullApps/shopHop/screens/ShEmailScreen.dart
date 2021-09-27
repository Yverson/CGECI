import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ModePhygital.dart';
import 'ShAPropos.dart';
import 'ShEditionScreen.dart';
import 'ShHomeFragment.dart';
import 'ShMotPresidentScreen.dart';

class ShEmailScreen extends StatefulWidget {
  static String tag = '/ShEmailScreen';

  @override
  ShEmailScreenState createState() => ShEmailScreenState();
}

class ShEmailScreenState extends State<ShEmailScreen> {
  var emailCont = TextEditingController();
  var descriptionCont = TextEditingController();
  late List<PCDashboardModel> mList2;

  @override
  void initState() {
    super.initState();

    List<PCDashboardModel> list = [];

    var title = PCDashboardModel("", "LE MOT DU PRESIDENT");
    list.add(title);

    var title1 = PCDashboardModel("", "L'EDITION 2021");
    list.add(title1);

    var title2 = PCDashboardModel("", "EN MODE PHYGITAL");
    list.add(title2);

    var title3 = PCDashboardModel("", "A PROPOS DE L'ORGANISATEUR");
    list.add(title3);

    mList2 = list;
  }

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: sh_white,
          iconTheme: IconThemeData(color: sh_textColorPrimary),
          title: text("FORUM", textColor: sh_textColorPrimary, fontFamily: fontBold, fontSize: textSizeNormal),
          actions: [
            IconButton(
              icon: Icon(Icons.headset_mic, color: sh_greenCgeci),
              onPressed: () {
                openwhatsapp();
              },
            ),
          ],
        ),
        body: Stack(children: <Widget>[
          new Container(
            decoration: BoxDecoration(color: sh_white),
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset("images/cgeci/download.png",  fit: BoxFit.cover),
                  ),
                  Container(
                    width: width,
                    height: MediaQuery.of(context).size.height - 250,
                    decoration: BoxDecoration(color: sh_white),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text("LE FORUM",
                            style: primaryTextStyle(
                                color: sh_greenCgeci,
                                size: 30,
                                fontFamily: 'Medium')),
                        SizedBox(height: 10),
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: mList2.length,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) => GestureDetector(
                            onTap: () {
                              print(index);
                              if (index == 0)
                                ShMotPresidentScreen().launch(context);
                              else if (index == 1)
                                ShEditionScreen().launch(context);
                              else if (index == 2)
                                ShPhygitalScreen().launch(context);
                              else if (index == 3)
                                ShAProposScreen().launch(context);

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
                            ).cornerRadiusWithClipRRect(10.0).paddingAll(8.0),
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


  openwhatsapp() async{
    var whatsapp ="+2250777362408";
    var whatsappURl_android = "whatsapp://send?phone="+whatsapp+"&text=";
    var whatappURL_ios ="https://wa.me/$whatsapp?text=${Uri.parse("")}";
    if(Platform.isIOS){
      // for iOS phone only
      if( await canLaunch(whatappURL_ios)){
        await launch(whatappURL_ios, forceSafariVC: false);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: new Text("whatsapp no installed")));

      }

    }else{
      // android , web
      if( await canLaunch(whatsappURl_android)){
        await launch(whatsappURl_android);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: new Text("whatsapp no installed")));

      }


    }

  }

}
