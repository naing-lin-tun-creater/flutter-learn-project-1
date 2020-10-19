import 'package:flutter/material.dart';
import 'package:flutter_part_1/my_bmi.dart';
import 'package:flutter_part_1/page1.dart';
import 'package:flutter_part_1/part_16_image.dart';
import 'package:flutter_part_1/part_17_listview.dart';
import 'package:flutter_part_1/part_18_pageview.dart';
import 'package:flutter_part_1/part_19_listview_exercise.dart';
import 'package:flutter_part_1/part_20_and_21_player_app.dart';
import 'package:flutter_part_1/part_23_login.dart';
import 'package:flutter_part_1/part_24_register.dart';

import 'my_home.dart';
import 'my_widget.dart';

void main(){
  runApp(
    MaterialApp(
      // home: MyHome()
    //   home: MyBMI(),
    //      home: Part16Image(),
    //   home: Part17ListView(),
    //   home: Part18PageView(),
    //   home: Part19ListViewExercise(),
    //   home: Part2021PlayerApp(),
    //   home: Page1(),
        home: LoginPagePart23(),
    //   home: RegisterPart24(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
     )
  );
}


//part one
/*
home: Center(
child: Text("Hello Flutter",),
),


Center(
child: Text("Hello Flutter",textDirection: TextDirection.ltr,),
)

 */

//part 2
/*MaterialApp(
home: Container(
color: Colors.blue,
child: Text("Hello"),
alignment: Alignment.center,
),
)
 */

//part 3 (Scaffold and appBar)
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
       // backgroundColor: Colors.orange,
        appBar:AppBar(
          title: Text("title"),
          leading: Icon(Icons.access_alarm),
          //title: Icon(Icons.photo),
          // title: Container(
          //   child: Text("Hello Flutter"),
          //   color: Colors.orange,
          // ),
          //backgroundColor: Colors.orange,
        ),
      ),
    )
     );
}

 */


//part 4 (Scaffold and appBar and body and container)
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
       // backgroundColor: Colors.orange,
        appBar:AppBar(
          title: Text("title"),
          leading: Icon(Icons.access_alarm),
          //title: Icon(Icons.photo),
          // title: Container(
          //   child: Text("Hello Flutter"),
          //   color: Colors.orange,
          // ),
          //backgroundColor: Colors.orange,
        ),

        // body: Center(
        //   child: Text("Center Hello World"),
        // ),

        body: Container(

          // color: Colors.green,
          //margin: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.only(top:20.0,left: 20.0),
          padding: EdgeInsets.only(top: 20.0),
          child: Icon(Icons.headset_mic),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.blue,width: 10),
            //borderRadius: BorderRadius.circular(200.0),
            shape: BoxShape.circle, // same as BorderRadius.circular()
            //borderRadius: BorderRadius.horizontal()
            //borderRadius: BorderRadius.only()
          ),
        ),
      ),
    )
     );
}

 */

//part 5 (Scaffold and appBar and body and container and row and column)
/*
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row"),
        ),
        // body: Center(
        //   child: Text("Hello Row"),
        // ),
        // body: Row(
        //   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: [
        //     // Text("Hello World"),
        //     // Text("Where are you from"),
        //     // Icon(Icons.book),
        //     // Text("I am from myanmar"),
        //     // Icon(Icons.photo)
        //
        //     Container(child: Text("Hello World"),color: Colors.red,),
        //     Container(child: Text("Where are you from"),color: Colors.green,),
        //     Container(child: Icon(Icons.book),color: Colors.blue,),
        //     Container(child: Text("I am from myanmar"),color: Colors.amberAccent,),
        //     Container(child: Icon(Icons.photo),color:Colors.orange,)
        //   ],
        // ),

           body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Text("Hello World"),
            // Text("Where are you from"),
            // Icon(Icons.book),
            // Text("I am from myanmar"),
            // Icon(Icons.photo)

            Container(child: Center(child: Text("Hello World")),color: Colors.red,),
            Container(child: Text("Where are you from",),color: Colors.green,alignment: Alignment.center,),
            Container(child: Icon(Icons.book),color: Colors.blue,),
            Container(child: Text("I am from myanmar"),color: Colors.amberAccent,margin: EdgeInsets.only(left: 20.0),),
            Container(child: Text("I am from myanmar"),color: Colors.amberAccent,padding: EdgeInsets.only(left: 20.0),),
            Container(child: Icon(Icons.photo),color:Colors.orange,)
          ],
        ),

      ),
    )
  );
}
 */


//part 6 (Expanded ,Row , Column,flex)
/*
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row"),
        ),

           body: Column(

            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Expanded(
                child: Container(
                  child: Center(
                      child: Text("Hello World")),color: Colors.green,)),
            Expanded(
              child: Container(
                child: Text("Flutter"),
                color: Colors.red,
              ),
            ),

            Expanded(
              child: Container(
                child: Text("Flutter"),
                color: Colors.orange,
              ),
            ),

            Expanded(
              child: Container(
                child: Text("Flutter"),
                color: Colors.yellow,
              ),
            ),

            Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                        child: Container(
                          child: Text("Hello"),
                          color: Colors.pink,
                        )
                    ),

                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Text("World"),
                        color: Colors.blue,
                       // alignment: Alignment.center,
                        padding: EdgeInsets.only(top:20.0,left: 20.0),
                      ),
                    )
                  ],
                )
            )

          ],
        ),


      ),
    )
  );
}
 */

//part 7 (Expanded ,Row , Column,flex and Expanded nested)
/*
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row"),
        ),

           body: Column(

            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Expanded(
                child: Container(
                  child: Center(
                      child: Text("Hello World")),color: Colors.green,)),
            Expanded(
              child: Container(
                child: Text("Flutter"),
                color: Colors.red,
              ),
            ),

            Expanded(
              child: Container(
                child: Text("Flutter"),
                color: Colors.orange,
              ),
            ),

            Expanded(
              child: Container(
                child: Text("Flutter"),
                color: Colors.yellow,
              ),
            ),

            Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                        child: Container(
                          child: Text("Hello"),
                          color: Colors.pink,
                        )
                    ),

                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Text("World"),
                        color: Colors.blue,
                       // alignment: Alignment.center,
                        padding: EdgeInsets.only(top:20.0,left: 20.0),
                      ),
                    ),

                    Expanded(
                      flex: 2,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                         children: [
                           Expanded(
                               child: Container(
                                 child: Text("Flutter"),
                                   color: Colors.green,
                               )
                           ),

                           Expanded(
                               child: Container(
                                 child: Text("Tutorial"),
                                 color: Colors.yellow,
                               )
                           )
                         ],
                       ),
                    )
                  ],
                )
            )

          ],
        ),


      ),
    )
  );
}

 */

//part 7 ui tutorial //should separate method for each widget
/*
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
           title: Text("Sport"),
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Expanded(
               flex: 1,
               child: Center(child: Text("iFit Coach",
                 style: TextStyle(color: Colors.black,
                   fontSize: 30.0,
                   fontWeight: FontWeight.bold
                 ),
               )
               ),
             ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("TODAY'S PLAN",style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  Text("DASHBOARD",style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  // Text("TODAY'S PLAN"),
                  // Text("DASHBOARD"),
                ],
              ),
            ),


            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: Text("ACTIVITY",style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  letterSpacing: 3.0
                ),),
                color: Colors.blue,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20.0),
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                child: Text("WORKOUT",style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  letterSpacing: 3.0
                ),),
                color: Colors.deepOrange,
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20.0),
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                child: Text("NUTRITION",style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  letterSpacing: 3.0
                ),),
                color: Colors.green,
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                child: Text("SLEEP ",style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  letterSpacing: 3.0
                ),),
                color: Colors.purple ,
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    )
  );
}
 */

//part 8 ui tutorial and separate method and stateless and stateful widget
/*
void main(){
  runApp(
    MaterialApp(
      home: MyHome()
    )
  );
}

Widget tabWidget(){
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("TODAY'S PLAN",style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        Text("DASHBOARD",style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        // Text("TODAY'S PLAN"),
        // Text("DASHBOARD"),
      ],
    ),
  );

}

Widget activityWidget(){

  return Expanded(
    flex: 2,
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: Text("ACTIVITY",style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          letterSpacing: 3.0
      ),),
      color: Colors.blue,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20.0),
    ),
  );

}

Widget workoutWidget(){
  return Expanded(
    flex: 2,
    child: Container(
      child: Text("WORKOUT",style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          letterSpacing: 3.0
      ),),
      color: Colors.deepOrange,
      margin: EdgeInsets.all(5.0),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20.0),
    ),
  );
}

Widget nutritionWidget(){
  return  Expanded(
    flex: 2,
    child: Container(
      child: Text("NUTRITION",style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          letterSpacing: 3.0
      ),),
      color: Colors.green,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 20.0),
      alignment: Alignment.centerLeft,
    ),
  );
}

Widget sleepWidget(){
  return  Expanded(
    flex: 2,
    child: Container(
      child: Text("SLEEP ",style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          letterSpacing: 3.0
      ),),
      color: Colors.purple ,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
    ),
  );
}

Widget myWidget(String str,Color color){
   return  Expanded(
    flex: 2,
    child: Container(
      child: Text(str,style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          letterSpacing: 3.0
      ),),
      color: color ,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
    ),
  );
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: Text("Sport"),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Center(child: Text("iFit Coach",
              style: TextStyle(color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            )
            ),
          ),

          tabWidget(),
          // activityWidget(),
          // workoutWidget(),
          // nutritionWidget(),
          // sleepWidget(),
          myWidget("ACTIVITY", Colors.blue),
          myWidget("WORKOUT", Colors.deepOrange),
          myWidget("NUTRITION", Colors.green),
          myWidget("SLEEP", Colors.purple)








        ],
      ),
    );
  }
}

 */

//part 9 class separate ui tutorial

/*
void main(){
  runApp(
    MaterialApp(
      home: MyHome()
    )
  );
}

Widget tabWidget(){
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("TODAY'S PLAN",style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        Text("DASHBOARD",style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        // Text("TODAY'S PLAN"),
        // Text("DASHBOARD"),
      ],
    ),
  );

}

Widget activityWidget(){

  return Expanded(
    flex: 2,
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: Text("ACTIVITY",style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          letterSpacing: 3.0
      ),),
      color: Colors.blue,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20.0),
    ),
  );

}

Widget workoutWidget(){
  return Expanded(
    flex: 2,
    child: Container(
      child: Text("WORKOUT",style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          letterSpacing: 3.0
      ),),
      color: Colors.deepOrange,
      margin: EdgeInsets.all(5.0),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20.0),
    ),
  );
}

Widget nutritionWidget(){
  return  Expanded(
    flex: 2,
    child: Container(
      child: Text("NUTRITION",style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          letterSpacing: 3.0
      ),),
      color: Colors.green,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 20.0),
      alignment: Alignment.centerLeft,
    ),
  );
}

Widget sleepWidget(){
  return  Expanded(
    flex: 2,
    child: Container(
      child: Text("SLEEP ",style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          letterSpacing: 3.0
      ),),
      color: Colors.purple ,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
    ),
  );
}

Widget myWidget(String str,Color color){
   return  Expanded(
    flex: 2,
    child: Container(
      child: Text(str,style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          letterSpacing: 3.0
      ),),
      color: color ,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
    ),
  );
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: Text("Sport"),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Center(child: Text("iFit Coach",
              style: TextStyle(color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            )
            ),
          ),

          tabWidget(),
          // activityWidget(),
          // workoutWidget(),
          // nutritionWidget(),
          // sleepWidget(),
          // myWidget("ACTIVITY", Colors.blue),
          // myWidget("WORKOUT", Colors.deepOrange),
          // myWidget("NUTRITION", Colors.green),
          // myWidget("SLEEP", Colors.purple)

          MyWidget("ACTIVITY", Colors.blue),
          MyWidget("WORKOUT", Colors.deepOrange),
          MyWidget("NUTRITION", Colors.green),
          MyWidget("SLEEP", Colors.purple)








        ],
      ),
    );
  }
}

 */


//part 10 (button)
  /*
void main(){
  runApp(
    MaterialApp(
      home: MyHome()
    )
  );
}

class MyHome extends StatefulWidget {

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: Text("Counter"),
      ),

      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

          Text(count.toString(),style: TextStyle(
            fontSize: 40.0,
            color: Colors.green
          ),
           textAlign: TextAlign.center,

          ),

            RaisedButton(
              onPressed: (){
                setState(() {

                });
                count++;
                print(count);
              },
              child: Text("Add"),
            ),

            OutlineButton(
                onPressed:(){
                  setState(() {

                  });
                  count--;
                  print(count);
                },
              // child: Text("Sub"),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.remove
                  ),

                  Text("Sub")
                ],
              ),
            ),

            FlatButton(
              onPressed: (){
                setState(() {
                  count++;
                });
            },
            child: Text("Add"),
            ),

            FloatingActionButton(
              onPressed: (){
                setState(() {

                });
                count++;
                print(count);
              },
              child: Icon(Icons.add),
            )



          ],
            ),
            ),


      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {

            });
            count++;
            print(count);
          },
          child: Icon(Icons.add),
      ),

    );
  }
}

 */