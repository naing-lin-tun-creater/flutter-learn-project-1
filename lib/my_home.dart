import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double result = 0;
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titleWidget()
      ),

      body: Container(
        padding: EdgeInsets.only(left: 20.0,right: 20.0),
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            firstTextField(),
            SizedBox(height: 20.0,),
            secondTextField(),
          SizedBox(height: 20.0,),
          calculatorButtons(),

            SizedBox(height: 20.0,),
          Text("$result",style:TextStyle(
            color: Colors.green,
            fontSize: 30.0
          ))
          ],
        ),
      ),
    );
  }

  Widget firstTextField(){
    return  TextField(
      keyboardType: TextInputType.number,
      controller: firstController,
      decoration: InputDecoration(
          hintText: "Enter number only",
          labelText: "Enter 1st number",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.red,width:1.0,style: BorderStyle.solid)

          ),
          prefixIcon: Icon(Icons.lock),


      ),
    );
  }

  Widget secondTextField(){
    return TextField(
      keyboardType: TextInputType.number,
      controller: secondController,
      decoration: InputDecoration(
          hintText: "Enter number only" ,
          labelText: "Enter 2 second number",
          border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.deepOrange,width: 1.0,
          ),
            borderRadius: BorderRadius.circular(12.0)
          ),
          //icon: Icon(Icons.lock),
          prefixIcon: Icon(Icons.lock)
      ),
    );

  }

  calculatorButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
      children: [
        RaisedButton(
          onPressed:_add,
          // child: Icon(Icons.add),
          child: Text("+"),
          textColor: Colors.white,
          color: Colors.blue,
        ),
        RaisedButton(
          onPressed:_sub,
          // child: Icon(Icons.remove),
          child: Text("-"),
          textColor: Colors.white,
          color: Colors.deepOrange,
        ),

        RaisedButton(
          onPressed:_multiply ,
          child:Text("x"),
          textColor: Colors.white,
          color: Colors.green,
        ),

        RaisedButton(
          onPressed:_divided,
          child: Text("/ "),
          textColor: Colors.white,
          color: Colors.red,
        )
      ],
    );
  }
  //_ is private
  _add(){
  String str1=firstController.text;
  String str2 = secondController.text;

  double num1 = double.parse(str1);
  double num2 = double.parse(str2);
  setState(() {
    result = num1 + num2;
  });

  }

  //_ is private
  _divided(){
    String str1=firstController.text;
    String str2 = secondController.text;

    double num1 = double.parse(str1);
    double num2 = double.parse(str2);
    setState(() {
      result = num1 / num2;
    });

  }

  //_ is private
  _sub(){
    String str1=firstController.text;
    String str2 = secondController.text;

    double num1 = double.parse(str1);
    double num2 = double.parse(str2);
    setState(() {
      result = num1 - num2;
    });

  }

  //_ is private
  _multiply(){
    String str1=firstController.text;
    String str2 = secondController.text;

    double num1 = double.parse(str1);
    double num2 = double.parse(str2);
    setState(() {
      result = num1 *  num2;
    });

  }

  Widget titleWidget(){
    return Row(
      children: [
        Icon(Icons.add_box),
        Text("Calculator")
      ],
    );
  }




}


