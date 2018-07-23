import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'show rootBundle;
import 'package:flutter_widget/entity/BasicItem.dart';
import 'package:flutter_widget/entity/Scroll.dart';
import 'package:flutter_widget/entity/TextItem.dart';
import 'package:flutter_widget/widget/CommonItem.dart';

class ScrollingListPage extends StatefulWidget{
  @override
  TextListPageState createState() {
    return TextListPageState();
  }

}
class TextListPageState extends State<ScrollingListPage>{
  ScrollingList list;
  List<Widget> widgets =[];

  @override
  void initState() {
    super.initState();
    _loadJson();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Basics")
      ),
      body:new CustomScrollView(
        primary: false,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.all(5.0),
            sliver: new SliverGrid.count(
              crossAxisSpacing: 5.0,
              crossAxisCount: 2,
              children: widgets
            ),
          ),
        ],
      )
    );
  }



  _getListData(List<BasicItem> list) {

      setState(() {
        widgets= [];
        for (BasicItem item in list) {
          widgets.add(CommonItem(item));
        }
      });
  }

  /**
   * 本地数据获取
   */
  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/Scrollings.json');
  }
  void _loadJson() {
    loadAsset().then((value){
      final jsonResponse = json.decode(value);
      list = new ScrollingList.fromJson(jsonResponse);
      _getListData(list.scrolling);
    });
  }

}