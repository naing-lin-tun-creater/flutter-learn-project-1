import 'package:flutter/material.dart';
import 'package:flutter_part_1/page2.dart';

class Page1 extends StatelessWidget {
  
  var tController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            padding: EdgeInsets.only(left: 20.0,right: 20.0),
            child: TextField(
              controller: tController,
              decoration: InputDecoration(
                labelText: "Enter something",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.red,width: 1.0),
                 )
              ),
            ),
          ),

          SizedBox(height: 20.0,),
          OutlineButton(
            onPressed: (){
              // ignore: missing_return
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return Page2(tController.text);
              }));
            },
            child: Text("Send"),
          ),
        ],
      ),
    );
  }
}
