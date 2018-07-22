import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget/entity/BasicItem.dart';

class CommonTitle extends StatelessWidget{
  String item;

  CommonTitle(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(item),
    );
  }
}
