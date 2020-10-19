import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Part25JsonParseOne extends StatefulWidget {

  @override
  _Part25JsonParseOneState createState() => _Part25JsonParseOneState();
}

class _Part25JsonParseOneState extends State<Part25JsonParseOne> {
  String url = "https://jsonplaceholder.typicode.com/posts";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Json Page"),
      ),

      body: list.length==0?Center(
        child:CircularProgressIndicator(),
      ):ListView(
        children: list.map((listData){
         return Card(
            child: ListTile(
              title: Text(listData["title"].toString()),
              subtitle: Text(listData["body"].toString()),
              leading: Text(listData["userId"].toString()),
            ),
          );
        }).toList(),

          // Card(
          //   child: ListTile(
          //     title: Text("User"),
          //     subtitle: Text("body"),
          //     leading: Text("UserId"),
          //   ),
          // )

      ),
    );
  }

  getData()async{
    await http.get(url).then((response){
     print(response.statusCode);
     // print(response.body);

     // List<Map<String,dynamic>> list1 = json.decode(response.body); // does not know as a map directly
     List<dynamic> list1 = json.decode(response.body);//konw as a list with dynamic
     List<Map<String,dynamic>> list2 = [];
     print(list1.length);

    
     list1.forEach((listData) {
       Map<String,dynamic> map = {
         "userId":listData["userId"],
         "id":listData["id"],
         "title":listData["title"],
         "body":listData["body"]
       };
       list2.add(map);
     });

     setState(() {
       list = list2;
     });
     print(list2.length.toString() + "list 2");

     });


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Map<String,dynamic> map = {
    "UserId":1,
    "Id":1,
    "title":"This is title",
    "body":"This is body"
  };

   List<Map<String,dynamic>> list = [];


}
