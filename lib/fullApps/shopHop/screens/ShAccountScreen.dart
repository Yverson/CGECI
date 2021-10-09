import 'dart:io';

import 'package:cgeci/fullApps/shopHop/models/NBModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShAdressManagerScreen.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShOffersScreen.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShQuickPayCardsScreen.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShImages.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShStrings.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ShOrderListScreen.dart';
import 'package:nb_utils/nb_utils.dart';

class ShAccountScreen extends StatefulWidget {
  static String tag = '/ShAccountScreen';

  @override
  ShAccountScreenState createState() => ShAccountScreenState();
}

class ShAccountScreenState extends State<ShAccountScreen> {
  List<String> dropDownItems = ['Most Recent', 'Ascending', 'Descending'];
  List<NBNewsDetailsModel> newsList = [] ;

  String? dropDownValue = 'Most Recent';

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {

    List<NBNewsDetailsModel> newsDetailsList = [];
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'Montrer',
      date: '20 jan 2019',
      image: "images/cgeci/1.png",
      title: 'votre savoir-faire, présenter vos produits et innovations',
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'Trouver',
      date: '20 jan 2019',
      image: "images/cgeci/2.png",
      title: "de nouveaux clients",
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'Personnaliser',
      date: '20 jan 2019',
      image: "images/cgeci/3.png",
      title: "votre relation clients, explorer leurs nouveaux besoins et créer des liens durables",
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'Obtenir',
      date: '20 jan 2019',
      image: "images/cgeci/4.png",
      title: 'des informations stratégiques et accélérer la croissance de votre entreprise',
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'Améliorer',
      date: '20 jan 2019',
      image: "images/cgeci/5.png",
      title: "votre image en Côte d’Ivoire, en Afrique et dans le monde",
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'Optimiser',
      date: '20 jan 2019',
      image: "images/cgeci/6.png",
      title: "votre visibilité à travers un événement de grande audience",
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'Multiplier',
      date: '20 jan 2019',
      image: "images/cgeci/7.png",
      title: "les occasions de présenter vos produits et votre savoir-faire, aux potentiels investisseurs et clients nationaux et internationaux",
      time: '40:18',
      isBookmark: true,
    ));
    newsDetailsList.add(NBNewsDetailsModel(
      categoryName: 'Motiver, mobiliser',
      date: '20 jan 2019',
      image: "images/cgeci/8.png",
      title: "et redynamiser vos équipes dans le cadre du succès de votre participation",
      time: '40:18',
      isBookmark: true,
    ));

    newsList = newsDetailsList;
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sh_white,
        iconTheme: IconThemeData(color: sh_textColorPrimary),
        title: text('QUI EXPOSE ?', textColor: sh_textColorPrimary, fontFamily: fontBold, fontSize: textSizeNormal),
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
    ),newsList.length != 0
          ? SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 0),
            Text("8 BONNES RAISONS D’EXPOSER A LA CGECI ACADEMY 2021",
                style: primaryTextStyle(
                    color: sh_greenCgeci,
                    size: 20,
                    fontFamily: 'Medium')),
            SizedBox(height: 2),
            ListView.separated(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                NBNewsDetailsModel mData = newsList[index];
                return Container(
                  margin: EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('${mData.image}', height: 60, width:  60  , fit: BoxFit.cover),
                      16.width,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${mData.categoryName}', style: boldTextStyle(color: sh_white)),
                          Text('${mData.title}', style: boldTextStyle(color: sh_white), softWrap: true, maxLines: 3),
                        ],
                      ).expand(flex: 2),
                    ],
                  ),
                ).onTap(() {
                });
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ],
        ).paddingOnly(left: 16, right: 16),
      )

          : Center(
        child: Text('No Data Found', style: boldTextStyle()),
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
