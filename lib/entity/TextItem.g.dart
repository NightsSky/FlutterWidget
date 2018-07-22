// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TextItem.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

TextItem _$TextItemFromJson(Map<String, dynamic> json) =>
    new TextItem(
        texts: (json['texts'] as List)
            ?.map((e) => e == null
                ? null
                : new BasicItem.fromJson(e as Map<String, dynamic>))
            ?.toList()
    );

abstract class _$TextItemSerializerMixin {
  List<BasicItem> get texts;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'texts': texts,

      };
}
