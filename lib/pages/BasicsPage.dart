import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'show rootBundle;
import 'package:flutter_widget/entity/BasicItem.dart';

class BasicsPage extends StatefulWidget{
  @override
  BasicsPageState createState() {
    return BasicsPageState();
  }

}
class BasicsPageState extends State<BasicsPage>{
  @override
  Widget build(BuildContext context) {
   _loadJson();
    return Scaffold(
      appBar: AppBar(
        title: Text("Basics")
      ),
      body:Text(""),
    );
  }

  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/Basics.json');
  }
  void _loadJson() {
    loadAsset().then((value){
      //JsonDecoder decoder = new JsonDecoder();
//      List<List<String>> json = decoder.convert(value);
//      print('姓名：'+json[0][0]+'，年龄：'+json[0][1]);
       print(value);
      final jsonResponse = json.decode(value);
      BasicItemList list = new BasicItemList.fromJson(jsonResponse);
      print(list.basics[0].img);
    });
  }

}