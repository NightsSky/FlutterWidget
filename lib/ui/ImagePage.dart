import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * ///参考资料
 *
 * https://docs.flutter.io/flutter/painting/ImageProvider-class.html
 *
 */
class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Container'),
        ),

        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('加载本地图片，须在pubspec.yaml中绑定'),
            ),
            Image.asset(
              'images/image1.jpg',
              width: 600.0,
              height: 240.0,
              scale: 1.2,//缩放？好像没起作用

//              color: Colors.blue,
//              colorBlendMode: BlendMode.colorBurn,//与color结合使用,有些奇特的效果

              //图片在box中的显示策略
              //参考https://docs.flutter.io/flutter/painting/BoxFit-class.html
              fit: BoxFit.contain,
              //图片在box中的对齐方式
              alignment: Alignment.bottomCenter,

              //当图片未铺满box时重复显示策略repeatX，repeatY
              repeat: ImageRepeat.noRepeat,

              //按一定规则拉伸图片
//              centerSlice: const Offset(1.0, 2.0) & const Size(200.0, 640.0),

//              matchTextDirection: true,

                gaplessPlayback:false//当图片变换的时候是否显示旧的图片
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('加载网络图片'),
            ),
            Image.network('http://pc1j2udq7.bkt.clouddn.com/image2.jpg'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('还剩两个先不做'),
            ),

          ],
        )
    );
  }


}

