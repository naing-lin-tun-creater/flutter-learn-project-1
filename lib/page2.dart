import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {

  String str;
  Page2(this.str);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
          title: Text("Page 2")
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(str,textAlign: TextAlign.center,style: TextStyle(
            fontSize: 30.0,
            color: Colors.blue
          ),),

          RaisedButton(
            onPressed: (){
              Navigator.of(context).pop();
              },
            child: Text("Back"),
          )
        ],
      ),
    );
  }
}
