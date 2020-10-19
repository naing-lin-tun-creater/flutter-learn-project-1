import 'package:flutter/material.dart';

class RegisterPart24 extends StatefulWidget {
  @override
  _RegisterPart24State createState() => _RegisterPart24State();
}

class _RegisterPart24State extends State<RegisterPart24> {

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0,),
                      Text("Home\nPlants",style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),),

                      SizedBox(height: 20.0,),

                      TextFormField(
                        onSaved: (str){
                          print(str);
                        },

                        // ignore: missing_return
                        validator: (str){
                          if(str.isEmpty){
                            return "required";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Enter First Name"
                        ),
                      ),

                      SizedBox(height: 20.0,),
                      TextFormField(
                        onSaved: (str){
                          print(str);
                        },

                        // ignore: missing_return
                        validator: (str){
                          if(str.isEmpty){
                            return "required";
                          }
                        },

                        decoration: InputDecoration(
                          hintText: "Enter Last Name"
                        ),
                      ),

                      SizedBox(height: 20.0,),
                      TextFormField(
                        onSaved: (str){
                          print(str);
                        },

                        // ignore: missing_return
                        validator: (str){
                          if(str.isEmpty){
                            return "required";
                          }
                        },

                        decoration: InputDecoration(
                          hintText: "Enter Email"
                        ),
                      ),

                      SizedBox(height: 20.0,),
                      TextFormField(

                        onSaved: (str){
                          print(str);
                        },

                        // ignore: missing_return
                        validator: (str){
                          if(str.isEmpty){
                            return "required";
                          }
                        },

                        decoration: InputDecoration(
                          hintText: "Enter Password"
                        ),
                      ),

                      SizedBox(height: 20.0,),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: (){
                            if(_formKey.currentState.validate()){
                              _formKey.currentState.save();
                            }
                          },
                          child: Text("Register"),
                          color: Colors.green,
                          textColor: Colors.white,
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        child: FlatButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: Text("sign in here"),
                          textColor: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
           ],
          ),
        ),
      ),
    );
  }
}
