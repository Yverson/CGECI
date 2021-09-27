import 'package:cgeci/fullApps/shopHop/models/NBModel.dart';
import 'package:cgeci/fullApps/shopHop/utils/NBWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cgeci/fullApps/shopHop/utils/NBDataProviders.dart';
import 'package:cgeci/fullApps/shopHop/utils/ShColors.dart';

import 'NBNewsDetailsScreen.dart';

class ShOrderListScreen extends StatefulWidget {
  static String tag = '/ShOrderListScreen';

  @override
  ShOrderListScreenState createState() => ShOrderListScreenState();
}

class ShOrderListScreenState extends State<ShOrderListScreen> {
  List<String> dropDownItems = ['Most Recent', 'Ascending', 'Descending'];
  List<NBNewsDetailsModel> newsList = nbGetNewsDetails();

  String? dropDownValue = 'Most Recent';

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {

  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: nbAppBarWidget(context, title: 'ACTUALITES'),
      body: newsList.length != 0
          ? SingleChildScrollView(
        child: Column(
          children: [
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
                      Image.asset('${mData.image}', height: 100, fit: BoxFit.fill).cornerRadiusWithClipRRect(16).expand(flex: 1),
                      16.width,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${mData.categoryName}', style: boldTextStyle(color: sh_colorPrimary)),
                          Text('${mData.title}', style: boldTextStyle(), softWrap: true, maxLines: 3),
                          8.height,
                          Text('${mData.date}', style: secondaryTextStyle()),
                        ],
                      ).expand(flex: 2),
                      PopupMenuButton(
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              height: 10,
                              child: Text('Remove', style: boldTextStyle()),
                              value: 'Remove',
                            ),
                          ];
                        },
                        onSelected: (dynamic value) {
                          setState(() {
                            if (value == 'Remove') {
                              mData.isBookmark = !mData.isBookmark;
                              newsList.remove(mData);
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ).onTap(() {
                  NBNewsDetailsScreen(newsDetails: mData).launch(context);
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
    );
  }
}
