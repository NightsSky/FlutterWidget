import 'package:flutter_widget/entity/BasicItem.dart';
import 'package:json_annotation/json_annotation.dart';
part 'LayoutItem.g.dart';
//json   见 http://doc.flutter-dev.cn/json/
//官方的插件也不是很好用
@JsonSerializable()
class LayoutItemList extends Object with _$LayoutItemListSerializerMixin{
   List<BasicItem> single_child;
   List<BasicItem> multi_child;
   List<BasicItem> layout_helpers;

   LayoutItemList({this.single_child, this.multi_child, this.layout_helpers});

   factory LayoutItemList.fromJson(Map<String, dynamic> json) => _$LayoutItemListFromJson(json);
}




