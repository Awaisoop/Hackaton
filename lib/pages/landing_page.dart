import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackaton/pages/login_page.dart';
import 'package:hackaton/pages/swipe_page.dart';


  class landing_page extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 4000),(){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> swipe_page()),ModalRoute.withName("/Root"));
    });
    // TODO: implement build
    return  Scaffold(

    body:Container(
   margin: EdgeInsets.only(top: 280),
    child:Column(
      children: <Widget>[
        Center(
          child: Image.asset('assets/img/Group 711.png',),
        ),
      Container(

        margin: EdgeInsets.only(top: 240),
      child: Column(
        children: <Widget>[
          Text("DESIGNED BY PAKSTUDENT",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        ],
      ),

      )
      ],
    ),
     ),
      );
  }

}