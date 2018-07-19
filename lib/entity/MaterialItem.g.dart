// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MaterialItem.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

MaterialItemList _$MaterialItemListFromJson(Map<String, dynamic> json) =>
    new MaterialItemList(
        navigation: (json['navigation'] as List)
            ?.map((e) => e == null
                ? null
                : new BasicItem.fromJson(e as Map<String, dynamic>))
            ?.toList(),
        buttons: (json['buttons'] as List)
            ?.map((e) => e == null
                ? null
                : new BasicItem.fromJson(e as Map<String, dynamic>))
            ?.toList(),
        input: (json['input'] as List)
            ?.map((e) => e == null
                ? null
                : new BasicItem.fromJson(e as Map<String, dynamic>))
            ?.toList(),
        dialogs: (json['dialogs'] as List)
            ?.map((e) => e == null
                ? null
                : new BasicItem.fromJson(e as Map<String, dynamic>))
            ?.toList(),
        layout: (json['layout'] as List)
            ?.map((e) => e == null
                ? null
                : new BasicItem.fromJson(e as Map<String, dynamic>))
            ?.toList())
      ..displays = (json['displays'] as List)
          ?.map((e) => e == null
              ? null
              : new BasicItem.fromJson(e as Map<String, dynamic>))
          ?.toList();

abstract class _$MaterialItemListSerializerMixin {
  List<BasicItem> get navigation;
  List<BasicItem> get buttons;
  List<BasicItem> get input;
  List<BasicItem> get dialogs;
  List<BasicItem> get displays;
  List<BasicItem> get layout;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'navigation': navigation,
        'buttons': buttons,
        'input': input,
        'dialogs': dialogs,
        'displays': displays,
        'layout': layout
      };
}
