import 'package:flutter/material.dart';

class Part16Image extends StatelessWidget {

  List<String> imageList = ["img/eaindra_kyaw_zin.jpg", "img/moe_set_wine.jpg", "img/nann_myat_phyo_thin.jpg", "img/sharr_htut_eaindra_2014miss.jpg", "img/su_pan_htwar.jpg", "img/thinzar_wint_kyaw.jpg", "img/yu_thandar_tin.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Lesson"),
      ),

      body: Column(

        children: [
          SizedBox(height: 20.0,),
          Container(child: Image.asset(imageList[1],fit: BoxFit.fill,),width: 200.0,height: 200.0,),
          SizedBox(height: 20.0,),
          Container(child: Image.network("https://images.unsplash.com/photo-1494548162494-384bba4ab999?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",fit: BoxFit.fill,),width: 200.0,height: 200.0,margin: EdgeInsets.only(left: 20.0),),//fit :BoxFit.Cover to full define width and height
        ],
      )

    );
  }
}
