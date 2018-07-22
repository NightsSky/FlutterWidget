
import 'package:flutter_widget/entity/BasicItem.dart';
import 'package:json_annotation/json_annotation.dart';
part 'TextItem.g.dart';
//flutter packages pub run build_runner watch     开启watch
@JsonSerializable()
class TextItem extends Object with _$TextItemSerializerMixin{
  List<BasicItem> texts;
  TextItem({this.texts});
  factory TextItem.fromJson(Map<String, dynamic> json) => _$TextItemFromJson(json);
}