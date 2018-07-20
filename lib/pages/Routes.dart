

import 'package:flutter/cupertino.dart';
import 'package:flutter_widget/pages/BasicsPage.dart';
import 'package:flutter_widget/pages/LayoutListPage.dart';
import 'package:flutter_widget/pages/MaterialListPage.dart';
import 'package:flutter_widget/ui/ContainerPage.dart';
import 'package:flutter_widget/ui/ImagePage.dart';
import 'package:flutter_widget/ui/Layoutpage.dart';
import 'package:flutter_widget/ui/RowAndColumnPage.dart';
import 'package:flutter_widget/ui/ScaffoldPage.dart';

//统一管理路由   也不知道这么写好不好
class Routes{

   Map<String, WidgetBuilder> routes = {
    'Basics': (BuildContext context) => new BasicsPage(),
    'Material Components': (BuildContext context) => new MaterialListPage(),
    'Layout': (BuildContext context) => new LayoutListPage(),
    //Basics
    'Container': (BuildContext context) => new ContainerPage(),
    'RowColumn': (BuildContext context) => new RowAndColumnPage(),
    'Image': (BuildContext context) => new ImagePage(),

    //Material
    'Scaffold': (BuildContext context) => new ScaffoldPage(),


    //Layout
    'single_child_layouts': (BuildContext context) => new LayoutPage(),

  };
   Map<String, WidgetBuilder> initRoutes() => routes;
}
