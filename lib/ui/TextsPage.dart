import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/CommonTitel.dart';

/**
 * ///参考资料
 *
 * https://docs.flutter.io/flutter/painting/ImageProvider-class.html
 *
 */
class TextsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Texts'),
        ),

        body: ListView(
          children: <Widget>[
            CommonTitle("Text"),

        new Text(
          'MyAppBar widget 里创建了一个\n  Container 对象，并设置参数高为56px，离屏幕填充8px，在 container 中，MyAppBar 使用  Row 布局其子级界面。在中间，使用  Expanded 创建 title widget，因为它可以自动填充其他子 widget 未使用的剩余空间。当然可以使用多个  Expanded 对象，并且可以使用  flex 参数来设置可用空间的比例。',
          maxLines: 3,//显示最大行数
          textAlign: TextAlign.start,//水平方向的对齐方式
          overflow: TextOverflow.ellipsis,//内容溢出时的处理方式
          softWrap: true,//自动换行？   这属性没研究明白
          textDirection:TextDirection.ltr,//文本显示的方向
          textScaleFactor: 1.2,//字体的缩放比例因子，以fontSize为基数

          style: new TextStyle(//样式设置属性 这个很常用
            inherit: true,//是否给未设置的属性使用默认样式， 一般人应该不会改这个
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,//字体倾斜
            //fontFamily:'Raleway',//使用自定义的字体
            letterSpacing: 1.2,//单字母之间的距离，区别于字间距
            wordSpacing: 1.5,//字间距
            textBaseline: TextBaseline.alphabetic,//没看出两种对齐方式有啥区别
            //locale: Locale('china','CN'),//创建一个新的字符集？不是很懂有啥用
//            background: Paint(), 绘制背景，但是是一个Paint对象

            decoration:TextDecoration.underline ,//装饰，可用于写下划线，上划线？？
            decorationColor: Colors.brown,//装饰颜色
            decorationStyle: TextDecorationStyle.dashed,//装饰的样式 ，虚线、双划线之类的

            height: 1.1,//行高取值为fontSize的倍数
            fontSize: 18.0,
            color: Colors.blue,
            debugLabel: "hello flutter"//就是一个描述语句，debug的时候才有
          ),
        ),

        CommonTitle("RichText"),
        new RichText(
          text: new TextSpan(
            text: 'Hello ',
            style: TextStyle(color: Colors.brown,fontSize: 18.0),
            children: <TextSpan>[
              new TextSpan(text: 'bold', style: TextStyle(color: Colors.red,fontSize: 16.0)),
              new TextSpan(text: ' world!'),
            ],
          ),
        ),
        CommonTitle("DefaultTextStyle"),

          ],
        )
    );
  }


}

