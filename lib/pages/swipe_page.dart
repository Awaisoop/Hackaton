import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hackaton/pages/login_page.dart';


class swipe_page extends StatefulWidget{
  @override
  _swipe_pageState createState() => _swipe_pageState();
}

class _swipe_pageState extends State<swipe_page> {
  List img = ['assets/img/Group 42.png','assets/img/Group 677.png','assets/img/Group 680.png'];

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(

     body: GestureDetector(
         onTap: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> login_page()));

         },
      child: Swiper(
        itemBuilder: (context, int  index) {
      return new Image.asset(img[index]);
    },
    itemCount: 3,
    viewportFraction: 0.8,
    scale: 0.5,
          itemWidth: 200.0,
          itemHeight: 200.0,
          pagination: new SwiperPagination(
            margin: EdgeInsets.only(bottom: 150),
    builder: new DotSwiperPaginationBuilder(
    color: Colors.white10, activeColor: Colors.green)),

       ),

    ),
 // Container(
   //       margin: EdgeInsets.only(top: 510,left: 50,right: 50),
     //     child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam",style: TextStyle(fontSize: 12),),
  );
  }
}