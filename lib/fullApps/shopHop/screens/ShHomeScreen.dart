import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/models/ShCategory.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShAccountScreen.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShCartFragment.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShContactUsScreen.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShFAQScreen.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShHomeFragment.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShOrderListScreen.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShProfileFragment.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShSearchScreen.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShSettingsScreen.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShWishlistFragment.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShExtension.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShImages.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShStrings.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../main.dart';
import 'ShExposantFragment.dart';
import 'ShInfoFragment.dart';
import 'ShSubCategory.dart';

class ShHomeScreen extends StatefulWidget {
  static String tag = '/ShHomeScreen';

  @override
  ShHomeScreenState createState() => ShHomeScreenState();
}

class ShHomeScreenState extends State<ShHomeScreen> {
  List<ShCategory> list = [];
  var homeFragment = ShHomeFragment();
  var cartFragment = ShCartFragment();
  var wishlistFragment = ShWishlistFragment();
  var profileFragment = ShProfileFragment();
  var exposantFragment = ShExposantFragment();
  var infoFragment = ShInfoFragment();
  late var fragments;
  var selectedTab = 0;

  @override
  void initState() {
    super.initState();
    fragments = [homeFragment, profileFragment, exposantFragment, infoFragment];
  }


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var title = "Accueil";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: sh_white,
        iconTheme: IconThemeData(color: sh_textColorPrimary),
        title: text(title, textColor: sh_textColorPrimary, fontFamily: fontBold, fontSize: textSizeNormal),
        actions: [
          IconButton(
            icon: Icon(Icons.message, color: sh_greenCgeci),
            onPressed: () {
              ShContactUsScreen().launch(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.headset_mic, color: sh_greenCgeci),
            onPressed: () {
              openwhatsapp();
            },
          ),
        ],
      ),
      body: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            fragments[selectedTab],
          ]),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            selectedTab = index;
          });
        },
        currentIndex: selectedTab,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: appStore.iconColor,
        unselectedItemColor: appStore.textSecondaryColor,
        backgroundColor: appStore.appBarColor,
        items: [
          //1
          BottomNavigationBarItem(
            icon: Image.asset('images/cgeci/home.png', height: 50, width: 50, color: appStore.iconSecondaryColor),
            activeIcon: Image.asset('images/cgeci/homef.png', height: 50, width: 50, color: sh_greenCgeci),
            label: 'ACCUEIL',
            backgroundColor: appStore.appBarColor,
          ),
          //2
          BottomNavigationBarItem(
            icon: Image.asset('images/cgeci/programme.png', height: 50, width: 50, color: appStore.iconSecondaryColor),
            activeIcon: Image.asset('images/cgeci/programmef.png', height: 50, width: 50, color: sh_greenCgeci),
            label: 'PROGRAMME',
          ),
          //3
          // BottomNavigationBarItem(
          //   icon: Image.asset('images/cgeci/speaker.png', height: 50, width: 50, color: appStore.iconSecondaryColor),
          //   activeIcon: Image.asset('images/cgeci/speakerf.png', height: 50, width: 50, color: appStore.iconColor),
          //   label: 'SPEAKER',
          // ),
          //4
          BottomNavigationBarItem(
            icon: Image.asset('images/cgeci/expo.png', height: 50, width: 50, color: appStore.iconSecondaryColor),
            activeIcon: Image.asset('images/cgeci/expof.png', height: 50, width: 50, color: appStore.iconColor),
            label: 'EXPOSANTS',
          ),
          //5
          BottomNavigationBarItem(
            icon: Image.asset('images/cgeci/info.png', height: 50, width: 50, color: appStore.iconSecondaryColor),
            activeIcon: Image.asset('images/cgeci/infof.png', height: 50, width: 50, color: appStore.iconColor),
            label: 'INFO',
          ),
        ],
      ),
    );
  }

  Widget getDrawerItem(String? icon, String? name, {VoidCallback? callback}) {
    return InkWell(
      onTap: callback,
      child: Container(
        color: sh_white,
        padding: EdgeInsets.fromLTRB(0, 14, 20, 14),
        child: Row(
          children: <Widget>[
            icon != null ? Image.asset(icon, width: 20, height: 20) : Container(width: 20),
            SizedBox(width: 20),
            text(name, textColor: sh_textColorPrimary, fontSize: textSizeMedium, fontFamily: fontMedium)
          ],
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
