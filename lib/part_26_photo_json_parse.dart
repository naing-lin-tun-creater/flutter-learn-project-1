import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PhotoJsonParse extends StatefulWidget {
  @override
  _PhotoJsonParseState createState() => _PhotoJsonParseState();
}

class _PhotoJsonParseState extends State<PhotoJsonParse> {
  String url = "https://jsonplaceholder.typicode.com/photos";
  List<Map<String,dynamic>> list = [];

  getData()async{
     await http.get(url).then((response){
       List<dynamic> list1 = json.decode(response.body);
       List<Map<String,dynamic>> list2 = [];

       list1.forEach((listData) {
         Map<String,dynamic> map = {
           "t":listData["title"],
           "u":listData["url"]
         };

         list2.add(map);

       });

       setState(() {
         list = list2;
       });

     });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Json Parse"),
      ),

      body:list.length==0?Center(
        child: CircularProgressIndicator(),
      ):ListView(
        children:list.map((ldata) {
         return Card(
           child: Column(
             children: [
               Image.network(ldata["u"]),
               Text(ldata["t"])
             ],
           ),
         );
        }).toList()
          // ListTile(
          //   title: Text("Title"),
          //   subtitle: Text("Url"),
          // )

      ),
    );
  }
}
