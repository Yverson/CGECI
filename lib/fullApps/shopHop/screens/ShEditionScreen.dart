import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ShCartFragment.dart';
import 'ShHomeFragment.dart';
import 'ShProfileFragment.dart';
import 'ShWishlistFragment.dart';

class ShEditionScreen extends StatefulWidget {
  static String tag = '/ShEmailScreen';

  @override
  ShEditionScreenState createState() => ShEditionScreenState();
}

class ShEditionScreenState extends State<ShEditionScreen> {
  var emailCont = TextEditingController();
  var descriptionCont = TextEditingController();
  late List<PCDashboardModel> mList2;

  var homeFragment = ShHomeFragment();
  var cartFragment = ShCartFragment();
  var wishlistFragment = ShWishlistFragment();
  var profileFragment = ShProfileFragment();
  late var fragments;
  var selectedTab = 0;

  String strTitre1 = """EDITION 2019""";

  String strMot1 = """Créée en 2012 par le Patronat Ivoirien, la CGECI ACADEMY, est devenue l’évènement annuel incontournable du secteur privé ivoirien.

La dernière édition de 2019 a confirmé son positionnement de plus grand forum économique du secteur privé national, avec une présence Africaine et Internationale de plus de 7000 participants, dont 4000 CEO et 3000 YOUNG CEO.

Des chiffres éloquents d’une édition exceptionnelle et d’une mobilisation sans précédent, amplifiée par la présence de S.E.M. Paul KAGAME, Président de la République du RWANDA et de fortes délégations des pays de la sous-région et de l’international.""";

  String strTitre2 = """EDITION 2021""";
  String strMot2 = """Aujourd’hui, la CGECI ACADEMY est incontestablement le plus grand rendez-vous des chefs d’entreprises, des décideurs publics et un espace de réseautage de haut niveau en Côte d’Ivoire, bénéficiant d’un rayonnement international.

Pour marquer son retour dans le contexte actuel de la Covid-19 qui a entrainé une accélération brutale de nombreuses tendances déjà à l’œuvre, la CGECI ACADEMY 2021 devient un événement Phygital, une plate forme hybride incluant une présence physique dimensionnée, et virtuelle, avec une audience illimitée.

L’édition 2021 de la CGECI ACADEMY aura lieu les 28 et 29 octobre 2021, au Sofitel Abidjan Hôtel Ivoire sur le thème : « Crises et Résilience des Entreprises en Afrique ».""";

  @override
  void initState() {
    super.initState();
    fragments = [homeFragment, profileFragment, cartFragment, homeFragment];
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: sh_white,
          iconTheme: IconThemeData(color: sh_textColorPrimary),
          title: text("L'EDITION 2021",
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
                  Material(
                      elevation: 0.0,
                      child: Image.asset("images/cgeci/imageaccueil.png",
                          fit: BoxFit.cover)),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(
                        left: width * 0.1041666666666667,
                        right: width * 0.1041666666666667),
                    width: width,
                    decoration: BoxDecoration(color: sh_white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text("CGECI ACADEMY",
                            style: primaryTextStyle(
                                color: sh_colorAccent,
                                size: 13,
                                fontFamily: 'Bold')),
                        Text("L'EDITION 2021",
                            textAlign: TextAlign.left,
                            style: primaryTextStyle(
                                color: sh_greenCgeci,
                                size: 20,
                                fontFamily: 'Bold')),
                        SizedBox(height: 20),
                        Text('${strTitre1}',
                            style: primaryTextStyle(fontFamily: 'Bold'),
                            textAlign: TextAlign.left),
                        Text('${strMot1}',
                            style: primaryTextStyle(),
                            textAlign: TextAlign.justify),
                        SizedBox(height: 20),
                        Text('${strTitre2}',
                            style: primaryTextStyle(fontFamily: 'Bold'),
                            textAlign: TextAlign.left),
                        Text('${strMot2}',
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
