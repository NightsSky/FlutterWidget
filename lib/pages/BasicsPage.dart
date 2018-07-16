import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicsPage extends StatefulWidget{
  @override
  BasicsPageState createState() {
    return BasicsPageState();
  }

}
class BasicsPageState extends State<BasicsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Baics"),
        ),
      ),
    );
  }

}