import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * ///参考资料
 *
 * https://docs.flutter.io/flutter/painting/ImageProvider-class.html
 *
 */
class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Layout'),
        ),

        body: ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Padding'),
            ),

            Container(
              height: 200.0,
              color: Colors.grey,
                //Padding  这个没啥好说的 就一个属性
              child: new Padding(
                padding: new EdgeInsets.all(40.0),
                child: Container(color: Colors.blue,),
              )
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Center'),
            ),
            Container(
//                height: 100.0,
                color: Colors.grey,
                //Center  这个没啥好说的 就一个属性
                child: Center(
                  heightFactor: 2.0,//如果父布局宽高没有设置约束，那么此控件的宽=子View的width乘以heightFactor的值
                  widthFactor: 1.0,//同上
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.blue,
                  ),
                )
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Align'),
            ),
            Container(
//              height: 200.0,
              color: Colors.grey,
              //Align
              child: Align(
                alignment: Alignment.bottomCenter,//子View的放置位置
                heightFactor: 2.0,//如果为非null且父布局宽高没有收到约束，则将其高度设置为子高度乘以此系数。
                widthFactor: 2.0,//如果为非null且父布局宽高没有收到约束，则将其宽度设置为子宽度乘以此系数。
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('FittedBox'),
            ),
            Container(
              height: 200.0,
              color: Colors.grey,
              //FittedBox
              child: FittedBox(
                alignment: Alignment(1.0, 1.0),//子View的放置位置(-1.0, -1.0)top-left  (0.0, 0.0)居中(1.0, 1.0)right-bottom
                fit: BoxFit.none,//子View充满策略
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('AspectRatio'),
            ),
            //纵横比控件

            Container(
              height: 200.0,
              color: Colors.grey,
              //FittedBox
              child: AspectRatio(
                aspectRatio: 16.0/9.0,//如果要一个16：9的效果
                child: Image.asset('images/image1.jpg',),
              ),
            ),
          ],
        )
    );
  }


}

