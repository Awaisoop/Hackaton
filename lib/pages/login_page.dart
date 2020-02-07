
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackaton/pages/chat_page.dart';
import 'package:hackaton/pages/landing_page.dart';
import 'package:hackaton/pages/swipe_page.dart';
import 'package:hackaton/pages/verification_page.dart';


class login_page extends  StatefulWidget{



  @override
  _login_pageState createState() => _login_pageState();
}
class _login_pageState extends State<login_page> {
 TextEditingController phoneNo = TextEditingController();

 @override
 void initState() {
   checkUser(context);
   super.initState();
 }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: Form(child: ListView(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: <Widget>[
            Image.asset("assets/img/Group 685.png", fit: BoxFit.cover,),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 50, left: 70),
                  child: Image.asset(
                    "assets/img/Group 684.png", fit: BoxFit.cover,),
                ),

              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 50, right: 40, top: 40),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam'),
                ),
              ],

            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text("Enter Phone Number",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 16),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
              ),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
              child: TextField(
                controller: phoneNo,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    hintText: "+92 331 2544969"
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> verification_page()));
                print("press");
              },
              child: Container(
                height: 50,
                margin: EdgeInsetsDirectional.only(
                    bottom: 20, top: 30, start: 50, end: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    "Verify Phone Number",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ],
    ),
    ),
    );
  }

 void verifyPhone() async{


   String SphoneNo = phoneNo.text;
   String verification_id;


   var firebaseAuth = FirebaseAuth.instance;
   print(SphoneNo);
   firebaseAuth.verifyPhoneNumber(
       phoneNumber: SphoneNo,
       timeout: Duration(seconds: 60),
       verificationCompleted: (cred){
         FirebaseAuth.instance.signInWithCredential(cred);
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> swipe_page()));
       },
       verificationFailed: (error){
         print(error.message);
       },
       codeSent: (vid,[int forceResendingToken]){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> verification_page()));
      //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Chat()));

         print("code send");
         },
       codeAutoRetrievalTimeout:(vid){
         print("autoretrieval timeout");
       });
 }
 checkUser(BuildContext context) async{
   var auth = FirebaseAuth.instance;
   FirebaseUser realtimeuser = await auth.currentUser();
   print(realtimeuser.phoneNumber);
   if(realtimeuser!= null){
     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> landing_page()));
   }
 }





}