

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * ///参考资料
 * https://juejin.im/post/5b13c3e1f265da6e3d666d80
 * https://docs.flutter.io/flutter/widgets/Container-class.html
 *
 */
class ContainerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),

        body:  Container(
          width: 300.0,
          height: 240.0,
          //约束
//          constraints: new BoxConstraints.expand(
//            height: 200.0,
//            width: 300.0
//          ),
          constraints: new BoxConstraints.loose(Size(400.0, 220.0)),//创建约束禁止Container大小大于此size
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.bottomRight,//控制child对齐方式

          child: new Text('Hello World', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.blue)),

//          color: Colors.teal.shade700,// 背景色 与decoration 不能同时使用

            decoration: new BoxDecoration(//绘制在child后面的装饰。可设置背景、边框等
            color: Colors.blue,
            border: new Border.all(width: 2.0, color: Colors.amber),
            borderRadius: new BorderRadius.all(new Radius.circular(12.0)),
            image: new DecorationImage(
              image: new NetworkImage('http://doc.flutter-dev.cn/images/catalog-widget-placeholder.png'),
              centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
            ),
          ),

//          foregroundDecoration: new BoxDecoration(//绘制在child前面的装饰。
//            image: new DecorationImage(
//              image: new NetworkImage('http://doc.flutter-dev.cn/images/catalog-widget-placeholder.png'),
//              centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//            ),
//          ),

          //矩阵
          transform: new Matrix4.rotationZ(0.2),//旋转
        )
      );
  }

}