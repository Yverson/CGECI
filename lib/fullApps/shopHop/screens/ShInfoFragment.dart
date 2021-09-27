import 'package:cgeci/fullApps/shopHop/screens/ShFAQScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';


class ShInfoFragment extends StatefulWidget {
  static String tag = '/ShHomeFragment';

  @override
  ShInfoFragmentState createState() => ShInfoFragmentState();
}
class PCDashboardModel {
  var icon = "";
  var title = "";

  PCDashboardModel(this.icon, this.title);
}

class ShInfoFragmentState extends State<ShInfoFragment> {
  var position = 0;
  var colors = [sh_cat_1, sh_cat_2, sh_cat_3, sh_cat_4, sh_cat_5];
  PageController pageController = PageController();

  late List<ProductModel> mStoreDealList;
  late List<ProductModel> mStoreDealList2;
  late List<ProductModel> mStoreDealList3;
  int selectedIndex = 0;
  List<Widget> pages = [];
  late List<PCDashboardModel> mList2;
  late List<PCDashboardModel> mList;

  @override
  void initState() {

    List<ProductModel> mProductList = [];
    ProductModel item = ProductModel();
    item.img = "images/cgeci/info/hi.jpg";
    item.name = "Hotel Ivoire";
    item.price = "27 22 48 26 26";
    mProductList.add(item);

    ProductModel item1 = ProductModel();
    item1.img = "images/cgeci/info/1.jpg";
    item1.name = "Maquis du Val";
    item1.price = "27 22 44 04 64";
    mProductList.add(item1);

    ProductModel item2 = ProductModel();
    item2.img = "images/cgeci/info/2.jpeg";
    item2.name = "Burger King";
    item2.price = "07 87 98 34 08";
    mProductList.add(item2);

    ProductModel item3 = ProductModel();
    item3.img = "images/cgeci/info/3.jpeg";
    item3.name = "Norima";
    item3.price = "27 22 51 03 14";
    mProductList.add(item3);

    ProductModel item4 = ProductModel();
    item4.img = "images/cgeci/info/4.png";
    item4.name = "Restaurant Kazajoma";
    item4.price = "27 22 41 78 62";
    mProductList.add(item4);

    ProductModel item5 = ProductModel();
    item5.img = "images/cgeci/info/5.jpeg";
    item5.name = "Nuit de Saigon";
    item5.price = "27 22 41 40 44";
    mProductList.add(item5);

    ProductModel item6 = ProductModel();
    item6.img = "images/cgeci/info/6.jpg";
    item6.name = "KFC";
    item6.price = "07 87 84 20 95";
    mProductList.add(item6);

    ProductModel item7 = ProductModel();
    item7.img = "images/cgeci/info/331.jpg";
    item7.name = "Espace 331";
    item7.price = "27 22 44 03 41";
    mProductList.add(item7);

    mStoreDealList = mProductList;

    mProductList = [];
    item1 = ProductModel();
    item1.img = "images/cgeci/info/8.jpeg";
    item1.name = "Sofitel Hotel Ivoire";
    item1.price = "27 22 48 26 26";
    mProductList.add(item1);

    ProductModel item0 = ProductModel();
    item0.img = "images/cgeci/info/7.jpeg";
    item0.name = "Hotel Particulier";
    item0.price = "27 22 44 16 16";
    mProductList.add(item0);

    item2 = ProductModel();
    item2.img = "images/cgeci/info/9.jpeg";
    item2.name = "Hotel Azalai";
    item2.price = "27 21 22 25 55";
    mProductList.add(item2);

    item3 = ProductModel();
    item3.img = "images/cgeci/info/10.jpeg";
    item3.name = "Hotel Pullman";
    item3.price = "27 20 30 20 20";
    mProductList.add(item3);

    item4 = ProductModel();
    item4.img = "images/cgeci/info/11.jpeg";
    item4.name = "Seen Hotel";
    item4.price = "27 20 00 67 00";
    mProductList.add(item4);

    item5 = ProductModel();
    item5.img = "images/cgeci/info/12.jpeg";
    item5.name = "Mövenpick Abidjan";
    item5.price = "27 20 23 20 23";
    mProductList.add(item5);


    mStoreDealList2 = mProductList;

    mProductList = [];
    item1 = ProductModel();
    item1.img = "images/cgeci/info/13.png";
    item1.name = "Taxi Ivoire";
    item1.price = "27 22 44 11 24";
    mProductList.add(item1);

    item2 = ProductModel();
    item2.img = "images/cgeci/info/14.png";
    item2.name = "TaxiJet";
    item2.price = "27 22 44 11 24";
    mProductList.add(item2);

    item3 = ProductModel();
    item3.img = "images/cgeci/info/15.png";
    item3.name = "UBER";
    item3.price = "www.uber.com";
    mProductList.add(item3);

    mStoreDealList3 = mProductList;

  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }


  Text profile(var label) {
    return Text(label, style: TextStyle(color: sh_colorPrimary, fontSize: 18, fontFamily: 'Medium'), textAlign: TextAlign.center);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(children: <Widget>[
      new Container(
        decoration: BoxDecoration(color: sh_white),
      ),
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: width,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(height: 50),
                    Text("Le forum économique du Secteur Privé Ivoirien :",
                        style: primaryTextStyle(
                            color: sh_greenCgeci,
                            size: 17,
                            fontFamily: 'Medium')),
                    SizedBox(height: 25),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),//or 15.0
                              child: Container(
                                height: width * 0.1875,
                                width: width * 0.1875,
                                child: SvgPicture.asset(
                                    "images/cgeci/outline-today-24px.svg",
                                    color: sh_greenCgeci,
                                    semanticsLabel: 'A red up arrow'
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("DATE",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt() ,
                                    fontFamily: 'Bold')),
                            Text("",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Bold')),
                            Text("Jeudi 28 et ",
                                style: primaryTextStyle(
                                    color: sh_textColorSecondary,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Medium')),
                            Text("Vendredi 29 ",
                                style: primaryTextStyle(
                                    color: sh_textColorSecondary,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Medium')),
                            Text("octobre 2021",
                                style: primaryTextStyle(
                                    color: sh_textColorSecondary,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Medium'))
                          ],
                        ),
                        SizedBox(width: (width * 0.025)),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),//or 15.0
                              child: Container(
                                height: width * 0.1875,
                                width: width * 0.1875,
                                child: SvgPicture.asset(
                                    "images/cgeci/outline-account_balance-24px.svg",
                                    color: sh_greenCgeci,
                                    semanticsLabel: 'A red up arrow'
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("LIEU",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Bold')),
                            Text("",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Bold')),
                            Text("Sofitel Abidjan ",
                                style: primaryTextStyle(
                                    color: sh_textColorSecondary,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Medium')),
                            Text("Hôtel Ivoire",
                                style: primaryTextStyle(
                                    color: sh_textColorSecondary,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Medium'))
                          ],
                        ),
                        SizedBox(width: (width * 0.025)),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),//or 15.0
                              child: Container(
                                height: width * 0.1875,
                                width: width * 0.1875,
                                child: SvgPicture.asset(
                                    "images/cgeci/Groupe_130.svg",
                                    color: sh_greenCgeci,
                                    semanticsLabel: 'A red up arrow'
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("CGECI ",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Bold')),
                            Text("ACADEMY",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Bold')),
                            Text("8H – 18H",
                                style: primaryTextStyle(
                                    color: sh_textColorSecondary,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Medium'))
                          ],
                        ),
                        SizedBox(width: (width * 0.025)),
                      ],
                    ),
                    SizedBox(height: 25),
                    Text("Dîner de Gala / Spectacle de Haut vol :",
                        style: primaryTextStyle(
                            color: sh_greenCgeci,
                            size: 17,
                            fontFamily: 'Medium')),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),//or 15.0
                              child: Container(
                                height: width * 0.1875,
                                width: width * 0.1875,
                                child: SvgPicture.asset(
                                    "images/cgeci/outline-today-24px.svg",
                                    color: sh_greenCgeci,
                                    semanticsLabel: 'A red up arrow'
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("DATE",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt() ,
                                    fontFamily: 'Bold')),
                            Text("",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Bold')),
                            Text("Vendredi 29 ",
                                style: primaryTextStyle(
                                    color: sh_textColorSecondary,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Medium')),
                            Text("octobre 2021",
                                style: primaryTextStyle(
                                    color: sh_textColorSecondary,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Medium'))
                          ],
                        ),
                        SizedBox(width: (width * 0.025)),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),//or 15.0
                              child: Container(
                                height: width * 0.1875,
                                width: width * 0.1875,
                                child: SvgPicture.asset(
                                    "images/cgeci/outline-account_balance-24px.svg",
                                    color: sh_greenCgeci,
                                    semanticsLabel: 'A red up arrow'
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("LIEU",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Bold')),
                            Text("",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Bold')),
                            Text("Sofitel Abidjan ",
                                style: primaryTextStyle(
                                    color: sh_textColorSecondary,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Medium')),
                            Text("Hôtel Ivoire",
                                style: primaryTextStyle(
                                    color: sh_textColorSecondary,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Medium'))
                          ],
                        ),
                        SizedBox(width: (width * 0.025)),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),//or 15.0
                              child: Container(
                                height: width * 0.1875,
                                width: width * 0.1875,
                                child: SvgPicture.asset(
                                    "images/cgeci/Groupe_130.svg",
                                    color: sh_greenCgeci,
                                    semanticsLabel: 'A red up arrow'
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("CGECI ",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Bold')),
                            Text("ACADEMY",
                                style: primaryTextStyle(
                                    color: sh_greenCgeci,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Bold')),
                            Text("20H",
                                style: primaryTextStyle(
                                    color: sh_textColorSecondary,
                                    size: (width * 0.03125).toInt(),
                                    fontFamily: 'Medium'))
                          ],
                        ),
                        SizedBox(width: (width * 0.025)),
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 25),
                    Text("SE RESTAURER",
                        style: primaryTextStyle(
                            color: sh_greenCgeci,
                            size: 17,
                            fontFamily: 'Medium')),
                    SizedBox(height: 25),
                    Container(
                      child: GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: ScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1),
                        itemCount: mStoreDealList.length,
                        itemBuilder: (context, index) {
                          return StoreDeal(mStoreDealList[index], index);
                        },
                      ),
                    ),
                    Divider(),
                    SizedBox(height: 25),
                    Text("SE LOGER",
                        style: primaryTextStyle(
                            color: sh_greenCgeci,
                            size: 17,
                            fontFamily: 'Medium')),
                    SizedBox(height: 25),
                    Container(
                      child: GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: ScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1),
                        itemCount: mStoreDealList2.length,
                        itemBuilder: (context, index) {
                          return StoreDeal(mStoreDealList2[index], index);
                        },
                      ),
                    ),
                    Divider(),
                    SizedBox(height: 25),
                    Text("TRANSPORT",
                        style: primaryTextStyle(
                            color: sh_greenCgeci,
                            size: 17,
                            fontFamily: 'Medium')),
                    SizedBox(height: 25),
                    Container(
                      child: GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: ScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1),
                        itemCount: mStoreDealList3.length,
                        itemBuilder: (context, index) {
                          return StoreDeal(mStoreDealList3[index], index);
                        },
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ]));
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
    var width = MediaQuery.of(context).size.width;

    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('${model.img}',
                height: width * 0.2708333333333333,
                width: width * 0.2708333333333333,
                fit: BoxFit.fill),
            SizedBox(height: 3),
            Text(model.name,
                style: primaryTextStyle(
                    color: sh_greenCgeci,
                    size: 17,
                    fontFamily: 'Medium')),
            SizedBox(height: 3),
            Text(model.price,
                style: primaryTextStyle(
                    color: sh_textColorSecondary,
                    size: 17,
                    fontFamily: 'Medium')),
          ],
        ),
      ),
    );
  }
}