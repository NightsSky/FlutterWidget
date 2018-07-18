import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/BasicsPage.dart';
import 'package:flutter_widget/ui/ContainerPage.dart';
import 'package:flutter_widget/ui/RowPage.dart';

//加载首页
class MainListPage extends StatefulWidget{
  @override
  MainListPageState createState() =>MainListPageState();
}

class MainListPageState extends State<MainListPage>{

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      routes: <String,WidgetBuilder>{
        'Basics': (BuildContext context) => new BasicsPage(),
        'Container': (BuildContext context) => new ContainerPage(),
        'Row': (BuildContext context) => new RowPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Widget"),
          actions: <Widget>[
            IconButton(
                icon:  Icon(Icons.search),
            onPressed: (){

            },)
          ],
        ),
        body: new CustomScrollView(
          primary: false,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.all(5.0),
              sliver: new SliverGrid.count(
                crossAxisSpacing: 5.0,
                crossAxisCount: 2,
                children: <Widget>[
                  CardItem('Basics','在你创建第一个Flutter应用之前你应该了解的控件'),
                  CardItem('Material Components','一些比较常用的material风格的控件'),
                  CardItem('Cupertino (iOS-style widgets)','漂亮且高保真的IOS风格小部件？.'),
                  CardItem('Basics','Widgets you absolutely need to know before building your first Flutter app.'),
                  CardItem('Basics','Widgets you absolutely need to know before building your first Flutter app.'),
                  CardItem('Basics','Widgets you absolutely need to know before building your first Flutter app.'),
                  CardItem('Basics','Widgets you absolutely need to know before building your first Flutter app.'),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}

class CardItem extends StatelessWidget{
  String itemName;
  String itemDescription;

  CardItem(this.itemName ,this.itemDescription);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(5.0),
              child: Text(
                  itemName,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0)),
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                      itemDescription,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0)
                  ),
                )),
            Padding(padding: EdgeInsets.all(5.0),
              child: Text(
                  'VISIT',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0)
              ),
            ),
            Container(
              width: 300.0,
              height: 5.0,
              color: Colors.blue,
            )
          ],
        ),
        onTap: (){
            Navigator.of(context).pushNamed(itemName);
        },
      )
    );
  }


}
