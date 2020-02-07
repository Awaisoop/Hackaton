import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackaton/pages/appbarProfile.dart';

class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: ProfileApp(),
      body:     SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
             Center(
               child:CircleAvatar(
               radius: 80,
               backgroundImage: AssetImage('assets/img/profile.png'),
             ),),
            Container(
              margin: EdgeInsets.only(left: 40,top: 20),
              child: Row(
                children: <Widget>[
                  Text("Your Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),

                ],

            ),

            ),
             Container(
               margin: EdgeInsets.only(left: 40,top: 20),
               child: Row(
                 children: <Widget>[
                   Container(
                    padding: EdgeInsets.symmetric(horizontal: 130,vertical: 20),
                     decoration: BoxDecoration(
                       color: Color.fromRGBO(242, 242, 242, 1),

                     ),
                     child: Text("Ishq Hassan",style: TextStyle(color: Color.fromRGBO(116, 116, 116, 1)),),
                   ),
        ],
                     ),
    ),
              Container(
                margin: EdgeInsets.only(left: 40,top: 20),
                  child: Row(
                  children: <Widget>[
                    Text("About",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),

                  ],

                ),

              ),
              Container(
                height: 150,
                margin: EdgeInsets.only(left: 40,right: 40,top: 5),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
                child: Text("But I must explain to you how all this"
                    " mistaken idea of denouncing pleasure "
                    "and praising pain was born and I will give you a complete"
                    " account of the system, and expound the actual teachings of"
                    " the great explorer of the truth, the master-builder of "
                    "human happiness No one rejects, dislikes, ",style: TextStyle(color: Color.fromRGBO(116, 116, 116, 1),fontSize: 14),),
              ),
    ],
                   ),
      ),

      )
    );

  }

}