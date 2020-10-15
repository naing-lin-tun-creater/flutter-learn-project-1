import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget {

  String str;//null
  Color color;//null
  MyWidget(this.str,this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: Text(str,style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            letterSpacing: 3.0
        ),),
        color: color ,
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
