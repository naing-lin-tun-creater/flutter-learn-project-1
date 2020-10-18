import 'package:flutter/material.dart';

class Part18PageView extends StatelessWidget {
  List<String> imageList = ["img/eaindra_kyaw_zin.jpg", "img/moe_set_wine.jpg", "img/nann_myat_phyo_thin.jpg", "img/sharr_htut_eaindra_2014miss.jpg", "img/su_pan_htwar.jpg", "img/thinzar_wint_kyaw.jpg", "img/yu_thandar_tin.jpg"];
  List<Actress> actress = [
    Actress("Eaindra Kyaw Zin","img/eaindra_kyaw_zin.jpg"),
    Actress("Moe Set Wine","img/moe_set_wine.jpg"),
    Actress("Nann Myat Phyo Thin","img/nann_myat_phyo_thin.jpg"),
    Actress("Sharr Htut Eaindra","img/sharr_htut_eaindra_2014miss.jpg"),
    Actress("Su Pan Htwar","img/su_pan_htwar.jpg"),
    Actress("Thinzar Wint Kyaw","img/thinzar_wint_kyaw.jpg"),
    Actress("Yu Thandar Tin","img/yu_thandar_tin.jpg")
  ];

  var pageController = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Lesson"),
      ),

      // ignore: missing_required_param, missing_return
      body: PageView.builder(itemBuilder: (BuildContext context,int index){
        return Column(
          children: [
            Container(child: Image.asset(actress[index].img,width: 200.0,height: 200.0,fit: BoxFit.contain,),padding: EdgeInsets.only(top: 20.0),),
            Container(
              padding: EdgeInsets.only(top: 10,bottom: 10),
              child: Text(actress[index].name,style: TextStyle(
                color: Colors.blue
              ),),
            )
          ],
        );
        return Text("test");
      },itemCount: imageList.length,scrollDirection: Axis.horizontal,controller: pageController,)
      // body: ListView(
      //   scrollDirection: Axis.horizontal,//default is vertical
      //   children: [
      //     Image.asset(imageList[0],fit: BoxFit.contain,),
      //     Image.asset(imageList[1],fit: BoxFit.contain,),
      //     Image.network("https://images.unsplash.com/photo-1494548162494-384bba4ab999?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",fit: BoxFit.contain,)
      //   ],
      // ),
    );
  }
}


class Actress{
  String name;
  String img;

  Actress(this.name,this.img);
}
