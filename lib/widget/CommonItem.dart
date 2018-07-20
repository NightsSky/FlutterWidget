import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget/entity/BasicItem.dart';

class CommonItem extends StatelessWidget{
  BasicItem item;

  CommonItem(this.item);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2.0,
        child: InkWell(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                  item.img,
              width: 400.0,
              height: 112.0,),
              Padding(padding: EdgeInsets.all(3.0),
                child: Text(
                    item.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0)),
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                        item.description,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0)
                    ),
                  )),
            ],
          ),
          onTap: (){
            Navigator.of(context).pushNamed(item.route);
          },
        )
    );
  }


}
