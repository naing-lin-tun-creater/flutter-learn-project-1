import 'package:flutter/material.dart';

class Part2021PlayerApp extends StatefulWidget {
  @override
  _Part2021PlayerAppState createState() => _Part2021PlayerAppState();
}

class _Part2021PlayerAppState extends State<Part2021PlayerApp> {

  int mark1 = 0;
  int mark2 = 0;

  String winner = "Draw";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Player App"),

      ),

      body: Column(
        children: [
          SizedBox(height: 20.0,),
        Text(winner,style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold
        ),),

          SizedBox(height: 20.0,),
          Row(
            children: [
              Expanded(child: Text("Player 1",textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),)),
              Expanded(child: Text("Player 2",textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),)),
            ],
          ),

          SizedBox(height: 20.0,),

          Row(
            children: [
              Expanded(child: Text(mark1.toString(),textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold
              ),)),
              Expanded(child: Text(mark2.toString(),textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.0
              ),)),
            ],
          ),

          SizedBox(height: 20.0,),

          Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: RaisedButton(
                  onPressed: (){
                    setState(() {
                      mark1++;
                    });

                    checkWinner();
                  },
                  child: Text("+1",style: TextStyle(
                    color: Colors.white
                  ),),
                  color: Theme.of(context).primaryColor,
                ),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: RaisedButton(
                  onPressed: (){
                    setState(() {
                      mark2++;
                    });

                    checkWinner();
                  },
                  child: Text("+1",style: TextStyle(
                    color: Colors.white
                  ),),
                  padding: EdgeInsets.only(left: 20.0,right:20.0),
                  color: Theme.of(context).primaryColor,
                ),
              )),
            ],
          ),


          Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: RaisedButton(
                  onPressed: (){
                    setState(() {
                      setState(() {
                        mark1 = mark1+2;
                      });

                      checkWinner();

                    });
                  },
                  child: Text("+2",style: TextStyle(
                    color: Colors.white
                  ),),
                  color: Theme.of(context).primaryColor,
                ),
              )),

              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: RaisedButton(
                  onPressed: (){
                    setState(() {
                      mark2 = mark2+2;
                    });

                    checkWinner();
                  },
                  child: Text("+2",style: TextStyle(
                    color: Colors.white
                  ),),
                  color:Theme.of(context).primaryColor,
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }

  void checkWinner(){
    if(mark1>mark2){
      setState(() {

      });
      winner = "Winner is player 1";
    }else if(mark2>mark1){
      setState(() {

      });
      winner = "Winner is player 2";
    }else{
      setState(() {

      });
      winner = "Draw";
    }
  }
}
