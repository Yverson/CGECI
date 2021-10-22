import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';

import 'package:http/http.dart' as http;

class ProductModel {
  String? name = "";
  String? price = "";
  String? weight = "";
  String? img = "";

  static ProductModel fromMap(Map<String, dynamic> map) {
    ProductModel ridesBean = ProductModel();
    ridesBean.name = map['name'];
    ridesBean.price = map['price'];
    ridesBean.weight = map['weight'];
    ridesBean.img = map['img'];
    return ridesBean;
  }

  Map toJson() => {
        "name": name,
        "price": price,
        "weight": weight,
        "img": img,
      };
}

class ShExposantFragment extends StatefulWidget {
  static String tag = '/ShProfileFragment';

  @override
  ShExposantFragmentState createState() => ShExposantFragmentState();
}

class ShExposantFragmentState extends State<ShExposantFragment> {

  Future<List<ProductModel>> fetchData() async {
    final response = await http.get(
        Uri.parse('http://cgeciapi.gaddielsoftware.com/api/Exposantsv1'));
    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      //Creating a list to store input data;
      List<ProductModel> rides = [];
      for (var singleUser in responseData) {
        ProductModel? r = ProductModel.fromMap(singleUser);

        //Adding user to the list.
        rides.add(r);
      }
      return rides;


    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }

  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    //var width = MediaQuery.of(context).size.width;
    //var height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(color: sh_white),
                child: Column(children: <Widget>[
                  SizedBox(height: 20),
                  Text("EXPOSANTS",
                      textAlign: TextAlign.start,
                      style: primaryTextStyle(
                          color: sh_greenCgeci, size: 30, fontFamily: 'Bold')),
                  SizedBox(height: 5),
                  FutureBuilder(
                      future: fetchData(),
                      builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                        if (snapshot.data != null) {
                          return Container(
                            child: GridView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              physics: ScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 5,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 1),
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return StoreDeal(snapshot.data[index], index);
                              },
                            ),
                          );

                        }
                        else
                          {
                            return Container(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }
                      })
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

    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network('${model.img}',
                height: width * 0.2708333333333333,
                width: width * 0.2708333333333333,
                fit: BoxFit.fill),
          ],
        ),
      ),
    );
  }
}
