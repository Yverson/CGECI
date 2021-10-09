import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ShHomeFragment.dart';

class ShPhygitalScreen extends StatefulWidget {
  static String tag = '/ShEmailScreen';

  @override
  ShPhygitalScreenState createState() => ShPhygitalScreenState();
}

class ShPhygitalScreenState extends State<ShPhygitalScreen> {
  var emailCont = TextEditingController();
  var descriptionCont = TextEditingController();
  late List<PCDashboardModel> mList2;
  String strMot = """
  
* Un événement à la fois physique et digital\n
* Une cérémonie d’ouverture en présence des plus hautes autorités du pays et des personnalités de renommée internationale\n
* Une conférence inaugurale\n
* Un panel de haut niveau\n
* Des sessions d’échanges, de formations et d’informations ;\n
* Une Exposition multisectorielle avec une audience mondiale\n
* Une cérémonie de clôture marquée des conférences et un panel de haut niveau\n
* Un prestigieux dîner de Gala de Clôture\n""";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: sh_white,
          iconTheme: IconThemeData(color: sh_textColorPrimary),
          title: text("EN MODE PHYGITAL",
              textColor: sh_textColorPrimary,
              fontFamily: fontBold,
              fontSize: textSizeNormal),
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
                  Container(
                    margin: EdgeInsets.only(
                        left: width * 0.1041666666666667,
                        right: width * 0.1041666666666667),
                    width: width,
                    decoration: BoxDecoration(color: sh_white),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text("2021, « LA CGECI ACADEMY » EN MODE PHYGITAL",
                            textAlign: TextAlign.start,
                            style: primaryTextStyle(
                                color: sh_greenCgeci,
                                size: 20,
                                fontFamily: 'Medium')),
                        SizedBox(height: 10),
                        Text('${strMot}',
                            style: primaryTextStyle(),
                            textAlign: TextAlign.justify),
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
    var whatsapp ="+2250700079444";
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
