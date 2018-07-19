

import 'package:flutter/cupertino.dart';
import 'package:flutter_widget/pages/BasicsPage.dart';
import 'package:flutter_widget/pages/MaterialListPage.dart';
import 'package:flutter_widget/ui/ContainerPage.dart';
import 'package:flutter_widget/ui/ImagePage.dart';
import 'package:flutter_widget/ui/RowAndColumnPage.dart';
import 'package:flutter_widget/ui/ScaffoldPage.dart';

//统一管理路由   也不知道这么写好不好
class Routes{

   Map<String, WidgetBuilder> routes = {
    'Basics': (BuildContext context) => new BasicsPage(),
    'Material Components': (BuildContext context) => new MaterialListPage(),

    //Basics
    'Container': (BuildContext context) => new ContainerPage(),
    'Row': (BuildContext context) => new RowAndColumnPage(),
    'Column': (BuildContext context) => new RowAndColumnPage(),
    'Image': (BuildContext context) => new ImagePage(),

    //Material
    'Scaffold': (BuildContext context) => new ScaffoldPage(),
    'Appbar': (BuildContext context) => new ScaffoldPage(),
    'BottomNavigationBar': (BuildContext context) => new ScaffoldPage(),
  };
   Map<String, WidgetBuilder> initRoutes() => routes;
}
