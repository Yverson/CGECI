import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ShHomeFragment.dart';

class ShAProposScreen extends StatefulWidget {
  static String tag = '/ShAProposScreen';

  @override
  ShAProposScreenState createState() => ShAProposScreenState();
}

class ShAProposScreenState extends State<ShAProposScreen> {
  var emailCont = TextEditingController();
  var descriptionCont = TextEditingController();
  late List<PCDashboardModel> mList2;
  String strMot = """La Confédération Générale des Entreprises de Côte d’Ivoire (CGECI) est la principale organisation patronale de Côte d’Ivoire. Elle est régie par le Code du Travail.\n
La CGECI est aujourd’hui, l’interlocuteur principal des pouvoirs publics, des organisations syndicales de travailleurs et des tiers, pour tous les sujets portant sur :
\n→ l’amélioration de l’environnement des affaires ;
→ la compétitivité des entreprises ;
→ la création de richesse par la promotion des initiatives privées et de l’entrepreneuriat;
→ la promotion du dialogue entre les partenaires sociaux ;
→ le développement du secteur privé ;\n
La CGECI est un acteur majeur dans la représentation des entreprises, la défense de leurs intérêts et la promotion de leurs activités.\n
La CGECI contribue également, de façon active, au développement, à la modernisation, au renforcement des capacités et à la facilitation de l’accès aux financements pour ses entreprises membres et particulièrement pour les PME PMI.\n
La CGECI fédère plus de 3 500 entreprises à travers 26 Groupements professionnels et Associations, de tous les secteurs d’activités : agriculture, mine, industrie, commerce, et services. Les membres de la CGECI, contribuent à l’économie ivoirienne pour :""";

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
          title: text("",
              textColor: sh_greenCgeci,
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
                        Text("A PROPOS DE L’ORGANISATEUR",
                            textAlign: TextAlign.start,
                            style: primaryTextStyle(
                                color: sh_greenCgeci,
                                size: 20,
                                fontFamily: 'Medium')),
                        SizedBox(height: 20),
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
