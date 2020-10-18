import 'package:flutter/material.dart';

class LoginPagePart23 extends StatefulWidget {
  @override
  _LoginPagePart23State createState() => _LoginPagePart23State();
}

class _LoginPagePart23State extends State<LoginPagePart23> {

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Login Page"),
        // ),


        body: Column(
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
                    Text("House\nPlants",style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0
                    ),),
                    TextFormField(
                      // ignore: missing_return
                      validator: (str){
                        if(str.isEmpty){
                          return "required";
                        }

                        if(!str.endsWith(".com")){
                          return "invalid email";
                        }
                      },

                      onSaved: (a){
                        print(a);
                      },


                      decoration: InputDecoration(
                        hintText: "Enter Email"
                      ),
                    ),
                    TextFormField(
                      // ignore: missing_return
                      validator: (str){
                        if(str.isEmpty){
                          return "required";
                        }
                      },

                      onSaved: (a){
                        print(a);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password"
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        color: Colors.green,
                        onPressed: (){
                          // _formKey.currentState.validate();
                          if(_formKey.currentState.validate()){
                            _formKey.currentState.save();
                          }
                        },

                        child: Text("Sign in"),
                      ),
                    ),

                    Container(
                      width: double.infinity,
                      child: FlatButton(
                        textColor: Colors.blue,
                        onPressed: (){

                        },
                        child: Text("Register Here"),
                      ),
                    )
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
