import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HeroJsonParse extends StatefulWidget {
  @override
  _HeroJsonParseState createState() => _HeroJsonParseState();
}

class _HeroJsonParseState extends State<HeroJsonParse> {
  String url =
      "https://raw.githubusercontent.com/joshuaduffy/dota2api/master/dota2api/ref/heroes.json";

  List<Map<String, dynamic>> list = [];

  @override
  Widget build(BuildContext context) {
    // FutureBuilder(
    //   future: getData(),
    //   builder: (context, snapshot) {
    //
    //   },
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Json parsing"),
      ),
      body: ListView(
          children: list.map((ldata) {
        return Text(ldata["localized_name"]);
      }).toList()
          // Text("titleslkd"),

          ),
    );
  }

   Future getData() async {

    var response= await http.get(url);
    Map<String, dynamic> map = json.decode(response.body);
    print(map["count"].toString() + "my map");

    List<dynamic> list1 = map["heroes"];
    // print(
    //     map["heroes"].toString());
    List<Map<String, dynamic>> list2 = [];

    list1.forEach((listData) {
      list2.add(listData);
    });
    setState(() {
      list = list2;
    });
    //  http.get(url).then((response) {
    //    print("Hello");
    //   print(response.body);
    //
    //
    //   // print(list1.toString() + "List 1 ");
    // });
     print("Hello world");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
}
