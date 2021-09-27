import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ShHomeFragment.dart';

class ShMotPresidentScreen extends StatefulWidget {
  static String tag = '/ShEmailScreen';

  @override
  ShMotPresidentScreenState createState() => ShMotPresidentScreenState();
}

class ShMotPresidentScreenState extends State<ShMotPresidentScreen> {
  var emailCont = TextEditingController();
  var descriptionCont = TextEditingController();
  late List<PCDashboardModel> mList2;
  String strMot =
      """La pandémie de la COVID-19 a provoqué la récession économique la plus importante, jamais observée, depuis près d’un siècle. Elle a remis en cause les fondamentaux sociaux et économiques, ainsi que le mode de fonctionnement des entreprises.
Ce n’est malheureusement pas la seule crise à laquelle les entreprises font face.

L’on note par ailleurs, la capacité de l’Afrique à surmonter les effets néfastes des crises, à travers une approche pragmatique et volontariste du secteur public et privé.

C’est dans cette conjoncture de relance post-crise, que le Patronat Ivoirien souhaite confronter les visions des décideurs et chefs d’entreprises sur le nouveau monde auquel nous faisons face.

L’ambition de la CGECI ACADEMY 2021 est de cartographier les crises majeures, évaluer leurs impacts sur le monde des affaires et proposer aux CEO expérimentés ou jeunes, ainsi qu’aux PME, des outils pratiques et adaptés à leur situation pour améliorer la résilience de leurs entreprises.

Jean-Marie ACKAH,
Président de la CGECI""";

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
          title: text("LE MOT DU PRESIDENT", textColor: sh_textColorPrimary, fontFamily: fontBold, fontSize: textSizeNormal),
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
                child:
                    Image.asset("images/cgeci/motpres.png", fit: BoxFit.cover),
              ),
              Container(
                margin: EdgeInsets.only(left: width * 0.1041666666666667, right: width * 0.1041666666666667),
                width: width,
                decoration: BoxDecoration(color: sh_white),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text("LE PLUS GRAND RENDEZ-VOUS DES CHEFS D’ENTREPRISES ET DECIDEURS PUBLICS NATIONAUX ET INTERNATIONAUX EN COTE D’IVOIRE",
                        textAlign: TextAlign.start,
                        style: primaryTextStyle(
                            color: sh_greenCgeci,
                            size: 20,
                            fontFamily: 'Medium')
                    ),
                    SizedBox(height: 20),
                    Text('${strMot}',
                        style: primaryTextStyle(),
                        textAlign: TextAlign.justify),
                    SizedBox(height: 30),
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
