import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ScaffoldPage extends StatefulWidget {

  @override
  ScaffoldPageState createState() {
    return ScaffoldPageState();
  }
}

class ScaffoldPageState extends State<ScaffoldPage> {
  List<BottomNavigationBarItem> _navigationViews;
  var appBarTitles = ['首页', '发现', '我的'];
  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();
    _navigationViews = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        title: new Text(appBarTitles[0]),
        backgroundColor: Colors.blue,
      ),
      new BottomNavigationBarItem(
        icon: const Icon(Icons.widgets),
        title: new Text(appBarTitles[1]),
        backgroundColor: Colors.blue,
      ),
      new BottomNavigationBarItem(
        icon: const Icon(Icons.person),
        title: new Text(appBarTitles[2]),
        backgroundColor: Colors.blue,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //导航栏
      appBar: AppBar(
        title: Text('Scaffold'),
        elevation: 3.0,
        centerTitle:true,
        backgroundColor:Colors.blue,
        automaticallyImplyLeading: true,
        actions: <Widget>[
          new IconButton( // action button
            icon: new Icon(Icons.directions_bike),
            onPressed: () { },
          ),
          new IconButton(
            icon: new Icon(Icons.more_horiz),
            onPressed: () { },
          ),



        ],
      ),


      backgroundColor: Colors.blueGrey,
      //内容
      body: Text(''),


      //浮动按钮
      floatingActionButton: FloatingActionButton(

          backgroundColor: Colors.orangeAccent,
          //icon 和文字的颜色
          foregroundColor: Colors.white,

          child: Text('+', style: TextStyle(fontSize: 24.0),),

//        heroTag: ,//没研究有啥用
          elevation: 6.0,
          //阴影
          highlightElevation: 18.0,
          mini: false,//button大小
          isExtended: true,
          tooltip: 'floatingActionButton ',//按下时的提示文本
          onPressed: () {
//            print('+');
          }),
      //底部菜单栏
      bottomNavigationBar: BottomNavigationBar(
        items: _navigationViews,
        type: BottomNavigationBarType.shifting,//样式
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },),


      primary: true,//如果false appbar不会被扩展
      persistentFooterButtons: <Widget>[
        Text("1"),
        Text("1"),
        Text("1"),
      ],

    );
  }

}
