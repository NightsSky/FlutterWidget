import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/CommonTitel.dart';

/**
 * ///参考资料
 *
 * https://docs.flutter.io/flutter/painting/ImageProvider-class.html
 *
 */
class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),

        body:
          ListView.builder(
            padding: new EdgeInsets.all(10.0),
            scrollDirection: Axis.vertical,//滚动方向
              reverse: false,//反向
              controller: ScrollController(initialScrollOffset:200.0,keepScrollOffset:true,debugLabel: 'scroll'),
//              primary: true,//不知道啥用
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 100,
              itemExtent: 20.0,
              itemBuilder: (BuildContext context, int index) {
              return  Text('entry $index');
            },
          )

    //在view不多的时候也可以用这种方式
//        ListView(
//          shrinkWrap: true,
//          padding: const EdgeInsets.all(20.0),
//          children: <Widget>[
//            const Text('I\'m dedicating every day to you'),
//            const Text('Domestic life was never quite my style'),
//            const Text('When you smile, you knock me out, I fall apart'),
//            const Text('And I thought I was so smart'),
//          ],
//        )

    );
  }


}

