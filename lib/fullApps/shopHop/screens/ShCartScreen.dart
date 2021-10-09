import 'dart:io';

import 'package:cgeci/fullApps/shopHop/models/NBImages.dart';
import 'package:cgeci/fullApps/shopHop/models/NBModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShCartFragment.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShStrings.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ShCartScreen extends StatefulWidget {
  static String tag = '/ShCartScreen';

  @override
  ShCartScreenState createState() => ShCartScreenState();
}

class ShCartScreenState extends State<ShCartScreen> {
  List<NBSettingsItemModel> mSettingList = [];
  NBLanguageItemModel? result = NBLanguageItemModel(NBEnglishFlag, 'English');

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    List<NBSettingsItemModel> settingList = [];
    settingList.add(NBSettingsItemModel(title: 'Les gouvernements'));
    settingList.add(NBSettingsItemModel(title: 'Les institutions nationales'));
    settingList.add(NBSettingsItemModel(title: 'Les groupes et entreprises'));
    settingList.add(NBSettingsItemModel(title: 'Chefs de grandes entreprises et decideurs publics'));
    settingList.add(NBSettingsItemModel(title: 'Young CEO et aspirants'));
    settingList.add(NBSettingsItemModel(title: 'Des personnalités de notoriété internationale'));
    settingList.add(NBSettingsItemModel(title: 'Les centres de promotion des investissements en Afrique et dans le Monde'));

    settingList.add(NBSettingsItemModel(title: 'Les organisations patronales régionales et internationales'));
    settingList.add(NBSettingsItemModel(title: 'Les chambres consulaires régionales et intenationales'));
    settingList.add(NBSettingsItemModel(title: 'Les Universités, Instituts de Recherche et Grandes Ecoles'));
    settingList.add(NBSettingsItemModel(title: 'Les Partenaires Techniques et Financiers (Banque Mondiale, SFID, BAD, ONUDI, CNUCED, FMI, BIT…)'));
    settingList.add(NBSettingsItemModel(title: 'Les incubateurs et centres d’accompagnements des PME/PMI et start-up'));
    settingList.add(NBSettingsItemModel(title: 'Etc.'));

    mSettingList = settingList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sh_white,
        title: text("QUI VISITE ?", textColor: sh_textColorPrimary, fontSize: textSizeNormal, fontFamily: fontMedium),
        iconTheme: IconThemeData(color: sh_textColorPrimary),
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
      decoration: BoxDecoration(color: Color.fromRGBO(0, 86, 98,1)),
    ),
    ListView.separated(
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, index) {
          return Divider();
        },
        itemCount: mSettingList.length,
        itemBuilder: (_, index) {
          return Row(
            children: [
              Icon(Icons.navigate_next, color: sh_white,).paddingAll(8),
              Text('${mSettingList[index].title}', style: primaryTextStyle(color: sh_white, size: 16,fontFamily: 'Bold',)).expand(),

            ],
          );
        },
      ),
      ])
    );
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

class NBLanguageItemModel {
  String image;
  String name;

  NBLanguageItemModel(this.image, this.name);
}