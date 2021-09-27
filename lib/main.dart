//region imports
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/main/store/AppStore.dart';
import 'package:cgeci/main/utils/AppTheme.dart';
import 'package:cgeci/routes.dart';

import 'fullApps/shopHop/screens/ShSplashScreen.dart';
import 'main/utils/AppConstant.dart';
//endregion

class CSDrawerModel {
  String? title;
  IconData? icon;
  Widget? goto;
  bool isSelected;

  CSDrawerModel({this.title, this.icon, this.goto, this.isSelected = false});
}


/// This variable is used to get dynamic colors when theme mode is changed
AppStore appStore = AppStore();

int currentIndex = 0;

void main() async {
  //region Entry Point
  WidgetsFlutterBinding.ensureInitialized();

  await initialize();

  appStore.toggleDarkMode(value: getBoolAsync(isDarkModeOnPref));

  if (isMobile) {
    //await Firebase.initializeApp();
    MobileAds.instance.initialize();

    //FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  }

  runApp(MyApp());
  //endregion
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '$mainAppName${!isMobile ? ' ${platformName()}' : ''}',
        home: ShSplashScreen(),
        theme: !appStore.isDarkModeOn ? AppThemeData.lightTheme : AppThemeData.darkTheme,
        routes: routes(),
        scrollBehavior: SBehavior(),
      ),
    );
  }
}
