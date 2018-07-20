// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LayoutItem.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

LayoutItemList _$LayoutItemListFromJson(Map<String, dynamic> json) =>
    new LayoutItemList(
        single_child: (json['single_child'] as List)
            ?.map((e) => e == null
                ? null
                : new BasicItem.fromJson(e as Map<String, dynamic>))
            ?.toList(),
        multi_child: (json['multi_child'] as List)
            ?.map((e) => e == null
                ? null
                : new BasicItem.fromJson(e as Map<String, dynamic>))
            ?.toList(),
        layout_helpers: (json['layout_helpers'] as List)
            ?.map((e) => e == null
                ? null
                : new BasicItem.fromJson(e as Map<String, dynamic>))
            ?.toList());

abstract class _$LayoutItemListSerializerMixin {
  List<BasicItem> get single_child;
  List<BasicItem> get multi_child;
  List<BasicItem> get layout_helpers;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'single_child': single_child,
        'multi_child': multi_child,
        'layout_helpers': layout_helpers
      };
}
