
import 'package:cgeci/fullApps/shopHop/utils/ShImages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShStrings.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShWidget.dart';
import 'package:nb_utils/nb_utils.dart';

import 'ShEmailScreen.dart';
import 'ShHomeFragment.dart';

class ProductModel {
  var name = "";
  var price = "";
  var weight = "";
  var img = "";
}

class ShSpreakersScreen extends StatefulWidget {
  static String tag = '/ShEmailScreen';

  @override
  ShSpreakersScreenState createState() => ShSpreakersScreenState();
}

class ShSpreakersScreenState extends State<ShSpreakersScreen> {
  late List<ProductModel> mStoreDealList;

  String strMot =
  """LE PLUS GRAND RENDEZ-VOUS DES CHEFS D’ENTREPRISES ET DECIDEURS PUBLICS NATIONAUX ET INTERNATIONAUX EN COTE D’IVOIRE

La pandémie de la COVID-19 a provoqué la récession économique la plus importante, jamais observée, depuis près d’un siècle. Elle a remis en cause les fondamentaux sociaux et économiques, ainsi que le mode de fonctionnement des entreprises.
Ce n’est malheureusement pas la seule crise à laquelle les entreprises font face.

L’on note par ailleurs, la capacité de l’Afrique à surmonter les effets néfastes des crises, à travers une approche pragmatique et volontariste du secteur public et privé.

C’est dans cette conjoncture de relance post-crise, que le Patronat Ivoirien souhaite confronter les visions des décideurs et chefs d’entreprises sur le nouveau monde auquel nous faisons face.

L’ambition de la CGECI ACADEMY 2021 est de cartographier les crises majeures, évaluer leurs impacts sur le monde des affaires et proposer aux CEO expérimentés ou jeunes, ainsi qu’aux PME, des outils pratiques et adaptés à leur situation pour améliorer la résilience de leurs entreprises.

Jean-Marie ACKAH,
Président de la CGECI""";

  List<ProductModel> exposantItems() {
    List<ProductModel> mProductList = [];
    ProductModel item1 = ProductModel();
    item1.img = "images/cgeci/s1.png";
    item1.name = "Sangafowa";
    item1.price = "COULIBALY";

    ProductModel item2 = ProductModel();
    item2.img = "images/cgeci/s2.png";
    item2.name = "Tidiane";
    item2.price = "BOYE";

    ProductModel item3 = ProductModel();
    item3.img = "images/cgeci/s3.png";
    item3.name = "Eric";
    item3.price = "KACOU";

    ProductModel item4 = ProductModel();
    item4.img = "images/cgeci/s4.png";
    item4.name = "Jose";
    item4.price = "DIJON";

    ProductModel item5 = ProductModel();
    item5.img = "images/cgeci/s5.png";
    item5.name = "Marc";
    item5.price = "WABI";

    ProductModel item6 = ProductModel();
    item6.img = "images/cgeci/s6.png";
    item6.name = "Eric";
    item6.price = "KACOU";

    mProductList.add(item6);
    mProductList.add(item5);
    mProductList.add(item4);
    mProductList.add(item1);
    mProductList.add(item3);
    mProductList.add(item2);

    return mProductList;
  }

  @override
  void initState() {
    super.initState();

    mStoreDealList = exposantItems();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: sh_white,
          iconTheme: IconThemeData(color: sh_textColorPrimary),
          title: text("SPEAKERS", textColor: sh_textColorPrimary, fontFamily: fontBold, fontSize: textSizeNormal),
        ),
        body: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.circular(0.0),
                    color: sh_white
                ),
                child: Column(children: <Widget>[
                  SizedBox(height: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child:
                    Image.asset("images/cgeci/s1.png", fit: BoxFit.cover),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: width * 0.1041666666666667, right: width * 0.1041666666666667),
                    width: width,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text("Sangafowa COULIBALY",
                            textAlign: TextAlign.start,
                            style: primaryTextStyle(
                                color: sh_greenCgeci,
                                size: 20,
                                fontFamily: 'Bold')
                        ),
                        SizedBox(height: 10),
                        Text('${strMot}',
                            style: primaryTextStyle(),
                            textAlign: TextAlign.justify),
                        SizedBox(height: 30),
                      ],
                    ),
                  )
                ]))));

  }
}

// ignore: must_be_immutable
class StoreDeal extends StatelessWidget {
  late ProductModel model;

  StoreDeal(ProductModel model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('${model.img}',
                height: 140, width: 140, fit: BoxFit.fill),
            Text('${model.name}',
                style: primaryTextStyle(
                    color: sh_textColorPrimary,
                    size: 20,
                    fontFamily: 'Bold')),
            Text('${model.price}',
                style: primaryTextStyle(
                    color: sh_textColorPrimary,
                    size: 20,
                    fontFamily: 'Medium'))
          ],
        ),
      ),
    );
  }
}
