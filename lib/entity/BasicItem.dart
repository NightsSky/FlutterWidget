


class BasicItemList{
  final List<BasicItem> basics;
  BasicItemList({this.basics});
  factory BasicItemList.fromJson(Map<String, dynamic> parsedJson)
  {
    var list = parsedJson['basics'] as List;
    List<BasicItem> basicList = list.map((i) => BasicItem.fromJson(i)).toList();
    return BasicItemList(
      basics: basicList,
    );
  }
}


class BasicItem{
  final String name;
  final String img;
  final String description;

  BasicItem(this.name, this.img, this.description);

  BasicItem.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        img = json['img'],
        description = json['description']
  ;

  Map<String, dynamic> toJson() =>
      {
        'name': name,
        'img': img,
        'description': description,
      };
}

