

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RowAndColumnPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RowPage'),
      ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Row',style: TextStyle(color: Colors.blue,fontSize: 18.0),),
            ),
            //Row 示例
            new Row(
              crossAxisAlignment: CrossAxisAlignment.end,//垂直方向的对齐方式
              mainAxisAlignment: MainAxisAlignment.end,//主轴(水平)的对齐方式
              mainAxisSize: MainAxisSize.max,//主轴占用空间方式
              textBaseline: TextBaseline.alphabetic,//没研究出来干啥的
              textDirection: TextDirection.rtl,//确定为水平时，控制child 从左向右显示或从右向左显示
              children: <Widget>[
                new Expanded(//child一般配合Expanded使用防止超出空间
                  child: new Text('Deliver features faster Deliver features faster', textAlign: TextAlign.center),
                ),
                Text("row"),
                Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.teal.shade700,
                  margin: const EdgeInsets.fromLTRB(3.0,0.0,3.0,0.0),
                ),
                Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.blueGrey,
                  margin: const EdgeInsets.fromLTRB(3.0,0.0,3.0,0.0),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Column',style: TextStyle(color: Colors.blue,fontSize: 18.0),),
            ),
            //Column 示例
            new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              verticalDirection: VerticalDirection.down,//确定为竖直方向时，控制child 从上到下或下到上
              children: <Widget>[

                Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.teal.shade700,
                  margin: const EdgeInsets.all(10.0),
                ),
                Container(
                  width: 140.0,
                  height: 40.0,
                  color: Colors.blueGrey,
                  margin: const EdgeInsets.all(10.0),
                ),
                Container(
                  width: 180.0,
                  height: 40.0,
                  color: Colors.red,
                  margin: const EdgeInsets.all(10.0),
                )
              ],
            )
          ],
        )
    );
  }

}