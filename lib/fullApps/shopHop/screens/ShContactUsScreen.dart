import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/main/utils/AppWidget.dart';
import 'package:cgeci/fullApps/shopHop/screens/ShEmailScreen.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShConstant.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShStrings.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class ShContactUsScreen extends StatefulWidget {
  static String tag = '/ShContactUsScreen';

  @override
  ShContactUsScreenState createState() => ShContactUsScreenState();
}

class ShContactUsScreenState extends State<ShContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sh_white,
        title: text("Nous Contactez", textColor: sh_textColorPrimary, fontSize: textSizeNormal, fontFamily: fontMedium),
        iconTheme: IconThemeData(color: sh_textColorPrimary),
        actionsIconTheme: IconThemeData(color: sh_colorPrimary),
        //actions: <Widget>[cartIcon(context, 3)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                //launch("tel:$sh_contact_phone");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text("SERVICE COMMERCIAL", textColor: sh_textColorPrimary, fontSize: textSizeLargeMedium, fontFamily: fontMedium),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: sh_textColorPrimary,
                      )
                    ],
                  ),
                  text("cgeciacademy@axesmarketing.com", fontSize: textSizeSMedium),
                  SizedBox(height: spacing_standard_new),
                  divider()
                ],
              ),
            ),
            SizedBox(height: spacing_standard_new),
            InkWell(
              onTap: () {
                //launch("tel:$sh_contact_phone");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text("COORDINATION LOGISTIQUE", textColor: sh_textColorPrimary, fontSize: textSizeLargeMedium, fontFamily: fontMedium),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: sh_textColorPrimary,
                      )
                    ],
                  ),
                  text("edgareffou@axesmarketing.com", fontSize: textSizeSMedium),
                  SizedBox(height: spacing_standard_new),
                  divider()
                ],
              ),
            ),
            SizedBox(height: spacing_standard_new),
            InkWell(
              onTap: () {
                //launch("tel:$sh_contact_phone");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text("RELATION PRESSE & MEDIA", textColor: sh_textColorPrimary, fontSize: textSizeLargeMedium, fontFamily: fontMedium),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: sh_textColorPrimary,
                      )
                    ],
                  ),
                  text("paulinzobo@axesmarketing.com", fontSize: textSizeSMedium),
                  SizedBox(height: spacing_standard_new),
                  divider()
                ],
              ),
            ),
            SizedBox(height: spacing_standard_new),
            InkWell(
              onTap: () {
                launch("tel:$sh_contact_phone");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text("TELEPHONE", textColor: sh_textColorPrimary, fontSize: textSizeLargeMedium, fontFamily: fontMedium),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: sh_textColorPrimary,
                      )
                    ],
                  ),
                  text("+225 27 20 33 02 00", fontSize: textSizeSMedium),
                  SizedBox(height: spacing_standard_new),
                  divider()
                ],
              ),
            ),
            SizedBox(height: spacing_standard_new),
            InkWell(
              onTap: () {
                ShEmailScreen().launch(context);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text("FAX", textColor: sh_textColorPrimary, fontSize: textSizeLargeMedium, fontFamily: fontMedium),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: sh_textColorPrimary,
                      )
                    ],
                  ),
                  text("+225 27 20 22 28 25", fontSize: textSizeSMedium),
                  SizedBox(height: spacing_standard_new),
                  divider()
                ],
              ),
            ),
            SizedBox(height: spacing_standard_new),
            InkWell(
              onTap: () {
                //launch("tel:$sh_contact_phone");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text("EMAIL", textColor: sh_textColorPrimary, fontSize: textSizeLargeMedium, fontFamily: fontMedium),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: sh_textColorPrimary,
                      )
                    ],
                  ),
                  text("cgeci@cgeci.com", fontSize: textSizeSMedium),
                  SizedBox(height: spacing_standard_new),
                  divider()
                ],
              ),
            ),
            SizedBox(height: spacing_standard_new),
            InkWell(
              onTap: () {
                //launch("tel:$sh_contact_phone");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text("TELEPHONE", textColor: sh_textColorPrimary, fontSize: textSizeLargeMedium, fontFamily: fontMedium),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: sh_textColorPrimary,
                      )
                    ],
                  ),
                  text("+(225) 27 22 41 33 94", fontSize: textSizeSMedium),
                  SizedBox(height: spacing_standard_new),
                  divider()
                ],
              ),
            ),
            SizedBox(height: spacing_standard_new),
            InkWell(
              onTap: () {
                //launch("tel:$sh_contact_phone");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text("EMAIL", textColor: sh_textColorPrimary, fontSize: textSizeLargeMedium, fontFamily: fontMedium),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: sh_textColorPrimary,
                      )
                    ],
                  ),
                  text("cgeciacademy@axesmarketing.com", fontSize: textSizeSMedium),
                  SizedBox(height: spacing_standard_new),
                  divider()
                ],
              ),
            ),
            SizedBox(height: spacing_standard_new),
            InkWell(
              onTap: () {
                //launch("tel:$sh_contact_phone");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text("SITE INTERNET", textColor: sh_textColorPrimary, fontSize: textSizeLargeMedium, fontFamily: fontMedium),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: sh_textColorPrimary,
                      )
                    ],
                  ),
                  text("https://forumcgeciacademy.com", fontSize: textSizeSMedium),
                  SizedBox(height: spacing_standard_new),
                  divider()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
