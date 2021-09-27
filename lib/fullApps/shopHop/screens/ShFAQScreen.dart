import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShStrings.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShWidget.dart';


class ProductModel {
  var name = "";
  var price = "";
  var weight = "";
  var img = "";
}


class ShFAQScreen extends StatefulWidget {
  static String tag = '/ShFAQScreen';

  @override
  ShFAQScreenState createState() => ShFAQScreenState();
}

class ShFAQScreenState extends State<ShFAQScreen> {
  late List<ProductModel> mStoreDealList;

  @override
  void initState() {
    super.initState();
    mStoreDealList = exposantItems();
  }


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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sh_white,
        title: text("Exposant de l’édition 2019", textColor: sh_textColorPrimary, fontSize: textSizeNormal, fontFamily: fontMedium),
        iconTheme: IconThemeData(color: sh_textColorPrimary),
        actionsIconTheme: IconThemeData(color: sh_colorPrimary),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5, childAspectRatio: 3 / 2),
            itemCount: mStoreDealList.length,
            itemBuilder: (context, index) {
              return StoreDeal(mStoreDealList[index], index);
            },
          ),
        ),
      )
    );
  }

  Widget getTitle(String content) {
    return text(content, textColor: sh_textColorPrimary, fontSize: textSizeLargeMedium, fontFamily: fontMedium);
  }

  Widget getSubTitle(String content) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, spacing_standard, 16.0, spacing_standard),
      child: text(content),
    );
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
      onTap: () {
      },
      child: Container(
        decoration: boxDecoration(showShadow: true, radius: 10.0),
        padding: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('${model.img}', height: 140, width: 140, fit: BoxFit.fill)
          ],
        ),
      ),
    );
  }
}