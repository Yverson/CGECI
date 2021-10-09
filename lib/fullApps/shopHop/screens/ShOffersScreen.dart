import 'dart:io';

import 'package:cgeci/fullApps/shopHop/models/NBModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:url_launcher/url_launcher.dart';


class ShOffersScreen extends StatefulWidget {
  static String tag = '/ShOffersScreen';

  @override
  ShOffersScreenState createState() => ShOffersScreenState();
}

class ShOffersScreenState extends State<ShOffersScreen> {
  List<String> dropDownItems = ['Most Recent', 'Ascending', 'Descending'];
  List<NBNewsDetailsModel> newsList = [];
  List<NBSettingsItemModel> mSettingList = [];

  String? dropDownValue = 'Most Recent';
  int? _sliding = 0;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    List<NBNewsDetailsModel> newsDetailsList = [];
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'MULTIPLIER',
      date: '20 jan 2019',
      image: "images/cgeci/svg/014-computer-monitor.svg",
      title: 'Les contacts opérationnels de haut niveau',
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'BÉNÉFICIER',
      date: '20 jan 2019',
      image: "images/cgeci/svg/040-money-bag.svg",
      title: """De bonnes pratiques d’entreprise à forte croissance""",
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'OBTENIR',
      date: '20 jan 2019',
      image: "images/cgeci/svg/032-pie-chart.svg",
      title:
          "des informations stratégiques et accélérer la croissance de votre entreprise",
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'TROUVER',
      date: '20 jan 2019',
      image: "images/cgeci/svg/049-idea-bulb.svg",
      title: 'de nouveaux partenaires fiables',
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'EFFECTUER',
      date: '20 jan 2019',
      image: "images/cgeci/svg/025-global.svg",
      title:
          """Un réseautage de haut niveau avec des acteurs clés de l’économie nationale et internationale""",
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'TIRER PROFIT',
      date: '20 jan 2019',
      image: "images/cgeci/svg/026-growth.svg",
      title:
          "des expériences et meilleures pratiques lors des conférences, panels et cocktails networking de haut niveau, animés par des personnalités de notoriété internationale",
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'ETRE ACTEUR ET MOTEUR',
      date: '20 jan 2019',
      image: "images/cgeci/svg/027-businessman.svg",
      title: """du développement du secteur privé dans votre pays""",
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'ACCÉDER',
      date: '20 jan 2019',
      image: "images/cgeci/svg/016-contract.svg",
      title:
          "un réseautage de haut niveau avec des acteurs clés de l’économie nationale et internationale",
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'PROMOUVOIR',
      date: '20 jan 2019',
      image: "images/cgeci/svg/047-search.svg",
      title: "votre entreprise en Afrique et à l’international",
      time: '40:18',
      isBookmark: true,
    ));

    newsList = newsDetailsList;


    List<NBSettingsItemModel> settingList = [];
    settingList.add(NBSettingsItemModel(title: 'Les gouvernements'));
    settingList.add(NBSettingsItemModel(title: 'Les institutions nationales'));
    settingList.add(NBSettingsItemModel(title: 'Les groupes et entreprises'));
    settingList.add(NBSettingsItemModel(
        title: 'Chefs de grandes entreprises et decideurs publics'));
    settingList.add(NBSettingsItemModel(title: 'Young CEO et aspirants'));
    settingList.add(NBSettingsItemModel(
        title: 'Des personnalités de notoriété internationale'));
    settingList.add(NBSettingsItemModel(
        title:
        'Les centres de promotion des investissements en Afrique et dans le Monde'));

    settingList.add(NBSettingsItemModel(
        title: 'Les organisations patronales régionales et internationales'));
    settingList.add(NBSettingsItemModel(
        title: 'Les chambres consulaires régionales et intenationales'));
    settingList.add(NBSettingsItemModel(
        title: 'Les Universités, Instituts de Recherche et Grandes Ecoles'));
    settingList.add(NBSettingsItemModel(
        title:
        'Les Partenaires Techniques et Financiers (Banque Mondiale, SFID, BAD, ONUDI, CNUCED, FMI, BIT…)'));
    settingList.add(NBSettingsItemModel(
        title:
        'Les incubateurs et centres d’accompagnements des PME/PMI et start-up'));
    settingList.add(NBSettingsItemModel(title: 'Etc.'));

    mSettingList = settingList;

  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    Widget mPage(var value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          16.height,
          ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              NBNewsDetailsModel mData = newsList[index];
              return Container(
                margin: EdgeInsets.only(top: 10, bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.navigate_next,
                      color: sh_white,
                    ).paddingAll(8),
                    16.width,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${mData.categoryName}',
                            style: boldTextStyle(color: sh_white)),
                        Text('${mData.title}',
                            style: boldTextStyle(color: sh_white),
                            softWrap: true,
                            maxLines: 3),
                      ],
                    ).expand(flex: 2),
                  ],
                ),
              ).onTap(() {});
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          ),
        ],
      );
    }

    Widget mPage2(var value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          16.height,
          ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            itemCount: mSettingList.length,
            itemBuilder: (context, index) {
              NBSettingsItemModel mData = mSettingList[index];
              return Container(
                margin: EdgeInsets.only(top: 10, bottom: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.navigate_next,
                      color: sh_white,
                    ).paddingAll(8),
                    Text('${mSettingList[index].title}',
                        style: primaryTextStyle(
                          color: sh_white,
                          size: 16,
                          fontFamily: 'Bold',
                        )).expand(),
                  ],
                ),
              ).onTap(() {});
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          ),
        ],
      );
    }

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: sh_white,
              iconTheme: IconThemeData(color: sh_textColorPrimary),
              title: text('POUQUOI PARTICIPER ?',
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
                decoration: BoxDecoration(color: Color.fromRGBO(0, 86, 98, 1)),
              ),
              SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(16.0),
                      child: CupertinoSlidingSegmentedControl(
                          children: {
                            0: Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'VOS RAISONS',
                                  style: primaryTextStyle(
                                      color: _sliding == 0
                                          ? sh_greenCgeci
                                          : sh_light_green),
                                )),
                            1: Container(
                                padding: EdgeInsets.all(10),
                                child: Text('QUI VISITE',
                                    style: primaryTextStyle(
                                        color: _sliding == 1
                                            ? sh_greenCgeci
                                            : sh_light_green))),
                          },
                          groupValue: _sliding,
                          onValueChanged: (dynamic newValue) {
                            setState(() {
                              _sliding = newValue;
                            });
                          }),
                    ),
                    if (_sliding == 0) mPage("CEO"),
                    if (_sliding == 1) mPage2("YCEO"),
                  ]))
            ])));
  }

  openwhatsapp() async {
    var whatsapp = "+2250700079444";
    var whatsappURl_android = "whatsapp://send?phone=" + whatsapp + "&text=";
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse("")}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    }
  }
}
