import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
import 'package:hackaton/chat_model/utlis.dart';
import 'package:hackaton/pages/chat_page.dart';



class verification_page extends StatefulWidget {
  @override
  _verification_page createState() => _verification_page();
}

class _verification_page extends State<verification_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        body: Scaffold(
          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[

                  Container(
                    padding: EdgeInsetsDirectional.only(top:50,start: 20),
                    width: getScreenSize(context).width,
                    child: Image.asset("assets/img/Group 685.png"),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsetsDirectional.only(start: 20),
                        width: getScreenSize(context).width,
                        child: Image.asset("assets/img/Group 691.png"),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsetsDirectional.only(bottom:5,start: 20),
                      width: getScreenSize(context).width,
                      child: Text("Enter code sent to +923312544969",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16),)
                  ),
                  Container(
                      padding: EdgeInsetsDirectional.only(start: 20),
                      width: getScreenSize(context).width,
                      child: Text("Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16),)
                  ),
                  Container(
                      padding: EdgeInsetsDirectional.only(top:20,start: 20),
                      width: getScreenSize(context).width,
                      child: Text("Enter Your Phone Number",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16),)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            padding: EdgeInsetsDirectional.only(start:0 ),
                            width: getScreenSize(context).width-350,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFf2f2f2)
                                  )
                                ]
                            ),
                            child: Container(
                              child: TextField(
                              ),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            padding: EdgeInsetsDirectional.only(start:0 ),
                            width: getScreenSize(context).width-350,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFf2f2f2)
                                  )
                                ]
                            ),
                            child: Container(
                              child: TextField(
                              ),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            padding: EdgeInsetsDirectional.only(start:0 ),
                            width: getScreenSize(context).width-350,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFf2f2f2)
                                  )
                                ]
                            ),
                            child: Container(
                              child: TextField(
                              ),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            padding: EdgeInsetsDirectional.only(start:0 ),
                            width: getScreenSize(context).width-350,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFf2f2f2)
                                  )
                                ]
                            ),
                            child: Container(
                              child: TextField(
                              ),
                            )
                        ),
                      ),
                    ],
                  )




                ],
              ),

              Padding(
                padding: EdgeInsetsDirectional.only(top: 600,start: 105),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 50,
                    width: getScreenSize(context).width-200,
                    color: Color(0xFF28bb4e),
                    child:GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> chat_page()));

                        },
                        child:Container(
                          padding: EdgeInsetsDirectional.only(top: 20),

                          child: Text("VERIFY",textAlign: TextAlign.center,style: TextStyle(letterSpacing: 1.5,color: Colors.white),),
                        )
                    ) ,
                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );;
  }
}