import 'package:flutter/material.dart';

class MyBMI extends StatefulWidget {
  @override
  _MyBMIState createState() => _MyBMIState();
}

class _MyBMIState extends State<MyBMI> {
  String result="Result";
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0,right: 20.0),
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            TextField(
              controller: textEditingController1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "in lbs",
                labelText: "Enter Your LBS",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.red,width:1.0,style: BorderStyle.solid)

                ),
              ),
            ),

            SizedBox(height: 20.0,),
            TextField(
              controller: textEditingController2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "in feet",
                labelText: "Enter Your Height(feet)",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.red,width:1.0,style: BorderStyle.solid)

                ),
              ),
            ),

            SizedBox(height: 20.0,),
            TextField(
              keyboardType: TextInputType.number,
              controller: textEditingController3,
              decoration: InputDecoration(
                hintText: "in inches",
                labelText: "Enter Your Height(inches)",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.red,width:1.0,style: BorderStyle.solid)

                ),
              ),
            ),

            SizedBox(height: 20.0,),
            RaisedButton(
              onPressed: (){
                _calculateBMI();
              },
              child: Text("Calculate")
            ),

            SizedBox(height: 20.0,),
            Text("$result"),
          ],
        ),
      ),
    );
  }

  _calculateBMI(){
      double weight = double.parse(textEditingController1.text) ;
      double feet = double.parse(textEditingController2.text) ;
      double inches = double.parse(textEditingController3.text);

      double totalInches = (feet*12)+inches;
      var bmi = (weight*703)/(totalInches*totalInches);

      if(bmi<18.5){
        result = "You are under weight with $bmi";
      }else if(bmi>=18.5 && bmi<=24.9){
        result = "You are normal weight with $bmi ";
      }else if(bmi>=24.9 && bmi<=29.9){
        result = "You are over weight with $bmi ";
      }else{
        result = "You are obesity with $bmi";
      }

      setState(() {

      });
  }
}
