import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cgeci/fullApps/shopHop/utils/T1Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../main.dart';

class ShSignUp extends StatefulWidget {
  static String tag = '/ShSignUp';

  @override
  ShSignUpState createState() => ShSignUpState();
}

class ShSignUpState extends State<ShSignUp> {
  var emailCont = TextEditingController();
  var passwordCont = TextEditingController();
  var confirmPasswordCont = TextEditingController();
  var firstNameCont = TextEditingController();
  var lastNameCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sh_white,
        iconTheme: IconThemeData(color: sh_textColorPrimary),
        title: text("OBTENIR MON BADGE", textColor: sh_textColorPrimary, fontFamily: fontBold, fontSize: textSizeNormal),
        actions: [
          IconButton(
            icon: Icon(Icons.headset_mic, color: sh_greenCgeci),
            onPressed: () {
              openwhatsapp();
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          child: Observer(
            builder: (_) => SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30),
                  Image.asset("images/cgeci/logocgeci21.png", width: context.width() * 0.80),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      formHeading("INSCRIPTION/"),
                      formSubHeadingForm("PASS PARTICIPANT"),
                    ],
                  ),
                  formSubHeading1Form("INSCRIPTION OBLIGATOIRE A PARTIR DU 15 SEPTEMBRE 2021"),
                  SizedBox(height: 40),
                  // editTextStyle("Nom", isPassword: false),
                  // SizedBox(height: 16),
                  // editTextStyle("Prénom", isPassword: false),
                  // SizedBox(height: 16),
                  // editTextStyle("Fonction", isPassword: true),
                  // SizedBox(height: 16),
                  // editTextStyle("Entreprise", isPassword: true),
                  // SizedBox(height: 16),
                  // editTextStyle("Cote d'Ivoire", isPassword: false),
                  // SizedBox(height: 16),
                  // editTextStyle("Email", isPassword: false),
                  // SizedBox(height: 16),
                  // editTextStyle("Telephone", isPassword: true),
                  // SizedBox(height: 20),
                  // Padding(padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  //     child: MaterialButton(
                  //   height: width * 0.125,
                  //   minWidth: double.infinity,
                  //   child: text("Inscription", fontSize: textSizeLargeMedium, textColor: sh_white, fontFamily: fontMedium),
                  //   textColor: sh_white,
                  //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                  //   color: Color.fromRGBO(50, 157, 156,1),
                  //   onPressed: () => {
                  //   showDialog(
                  //   context: context,
                  //   builder: (BuildContext context) => CustomDialogExample(),
                  //   )
                  //
                  //   //ShHomeScreen().launch(context);
                  //   },
                  // )
                  // ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
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


class CustomDialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: new BoxDecoration(
          color: appStore.scaffoldBackground,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10.0, offset: const Offset(0.0, 10.0)),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                finish(context);
              },
              child: Container(padding: EdgeInsets.all(16), alignment: Alignment.centerRight, child: Icon(Icons.close, color: appStore.textPrimaryColor)),
            ),
            Text('Inscription reussie', style: boldTextStyle(color: appStore.textPrimaryColor, size: 24)),
            16.height,
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text("Vous venez de vous enregistrer à notre évènement et nous vous en remercions. ", style: secondaryTextStyle(color: appStore.textSecondaryColor)),
            ),
            30.height,
          ],
        ),
      ),
    );
  }
}