import 'package:flutter/material.dart';

class Part19ListViewExercise extends StatefulWidget {
  @override
  _Part19ListViewExerciseState createState() => _Part19ListViewExerciseState();
}



class _Part19ListViewExerciseState extends State<Part19ListViewExercise> {

  List<String> names = [];//0
  var textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Exercise"),
      ),

      body: Column(
        children: [
          TextField(
            controller: textFieldController,
            decoration: InputDecoration(
              labelText: "Enter User Name"
            ),
          ),

          RaisedButton(
            onPressed: (){
              String userName = textFieldController.text;

              setState(() {
                names.add(userName);
              });
            },
            child: Text("Add"),
          ),
          
          // ignore: missing_return
          Expanded(
            child: ListView.builder(itemBuilder: (BuildContext context,int index){
              return Card(
                child: Container(child: Text(names[index],textAlign: TextAlign.center,),padding: EdgeInsets.all(10.0),
                color: Colors.red.withOpacity(.5),),
              );
            },itemCount: names.length,),
          )
        ],
      ),
    );
  }
}
