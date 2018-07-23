import 'dart:convert' show json;

import 'package:flutter_widget/entity/BasicItem.dart';


class ScrollingList {

  List<BasicItem> scrolling;


  ScrollingList.fromParams({this.scrolling});

  factory ScrollingList(jsonStr) => jsonStr is String ? ScrollingList.fromJson(json.decode(jsonStr)) : ScrollingList.fromJson(jsonStr);

  ScrollingList.fromJson(jsonRes) {
    scrolling = [];

    for (var scrollingItem in jsonRes['scrolling']){

      scrolling.add(new BasicItem.fromJson(scrollingItem));
    }


  }

  @override
  String toString() {
    return '{"scrolling": $scrolling}';
  }
}





