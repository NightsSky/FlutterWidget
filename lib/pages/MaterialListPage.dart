import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'show rootBundle;
import 'package:flutter_widget/entity/BasicItem.dart';
import 'package:flutter_widget/entity/MaterialItem.dart';
import 'package:flutter_widget/widget/CommonItem.dart';

class MaterialListPage extends StatefulWidget{
  @override
  MaterialListPageState createState() {
    return MaterialListPageState();
  }

}
class MaterialListPageState extends State<MaterialListPage>{
  MaterialItemList list;
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
        title: Text("Material Design 风格 Widgets")
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

  _getListData(MaterialItemList materialItemList) {

      setState(() {
        widgets= [];
        for (BasicItem item in materialItemList.navigation) {
          widgets.add(CommonItem(item));
        }
      });
  }

  /**
   * 本地数据获取
   */
  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/materialDesign.json');
  }
  void _loadJson() {
    loadAsset().then((value){
      final jsonResponse = json.decode(value);
      list = new MaterialItemList.fromJson(jsonResponse);
      _getListData(list);
    });
  }

}