import 'package:flutter_widget/entity/BasicItem.dart';
import 'package:json_annotation/json_annotation.dart';
part 'MaterialItem.g.dart';

@JsonSerializable()
class MaterialItemList extends Object with _$MaterialItemListSerializerMixin{
   List<BasicItem> navigation;
   List<BasicItem> buttons;
   List<BasicItem> input;
   List<BasicItem> dialogs;
   List<BasicItem> displays;
   List<BasicItem> layout;
   MaterialItemList({this.navigation,this.buttons,this.input,this.dialogs,this.layout});

   factory MaterialItemList.fromJson(Map<String, dynamic> json) => _$MaterialItemListFromJson(json);
}




