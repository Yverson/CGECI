
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';

import 'ShSpreakersScreen.dart';

class ProductModel {
  var name = "";
  var price = "";
  var weight = "";
  var img = "";
}

class ShCartFragment extends StatefulWidget {
  static String tag = '/ShProfileFragment';

  @override
  ShCartFragmentState createState() => ShCartFragmentState();
}

class ShCartFragmentState extends State<ShCartFragment> {
  late List<ProductModel> mStoreDealList;


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
        body: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                    color: sh_white

                ),
                child: Column(children: <Widget>[
      SizedBox(height: 30),
      Text("SPEAKERS",
          textAlign: TextAlign.start,
          style: primaryTextStyle(
              color: sh_greenCgeci, size: 30, fontFamily: 'Bold')),
      SizedBox(height: 30),
      Container(
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 20,
              childAspectRatio: 1.2),
          itemCount: mStoreDealList.length,
          itemBuilder: (context, index) {
            return StoreDeal(mStoreDealList[index], index);
          },
        ),
      ),
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
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        ShSpreakersScreen().launch(context);
      },
      child: Container(
        padding: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('${model.img}',
                height: width * 0.28125 , width: width * 0.28125, fit: BoxFit.fill),
            Text('${model.name}',
                style: primaryTextStyle(
                    color: sh_greenCgeci,
                    size: 15,
                    fontFamily: 'Bold')),
            Text('${model.price}',
                style: primaryTextStyle(
                    color: sh_greenCgeci,
                    size: 15,
                    fontFamily: 'Medium'))
          ],
        ),
      ),
    );
  }
}
