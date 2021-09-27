import 'package:flutter/material.dart';
import 'package:cgeci/main/model/AppModel.dart';
import 'package:cgeci/main/screens/ProKitScreenListing.dart';

Map<String, WidgetBuilder> routes() {
  return <String, WidgetBuilder>{
    ProKitScreenListing.tag: (context) => ProKitScreenListing(ProTheme()),
  };
}
