import 'package:flutter/material.dart';
import 'package:flutter_part_1/part_25_json_parse_1.dart';
import 'package:flutter_part_1/part_26_photo_json_parse.dart';
import 'package:flutter_part_1/part_27_hero_json_parse.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),

      body: ListView(
        children: [
         RaisedButton(
           onPressed: (){
            // ignore: missing_return
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return Part25JsonParseOne();
            },));
           },
           child: Text("Post Json Parsing"),
         ),

          RaisedButton(
            onPressed: (){
              // ignore: missing_return
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return PhotoJsonParse();
              }));
            },

            child: Text("Photo Json Parsing"),
          ),

          RaisedButton(
            onPressed: (){
              // ignore: missing_return
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return HeroJsonParse();
              }));
            },

            child: Text("Hero Json Parse"),
          )
        ],
      ),
    );
  }
}
