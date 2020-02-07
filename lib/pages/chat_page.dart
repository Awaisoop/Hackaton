import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackaton/App.dart';
import 'package:hackaton/chat_model/chat_model.dart';
import 'package:hackaton/pages/appBar.dart';

class chat_page extends StatefulWidget{
  @override
  _chat_pageState createState() => _chat_pageState();
}

class _chat_pageState extends State<chat_page> {

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(),
      body:Container(
     child:   ListView.builder(
              itemBuilder: (context, position) {
                return new Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: new Card(
                        elevation: 1.0,
                        color: const Color(0xFFFFFFFF),
                        child: new ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("${ChatMockData[position].imageUrl}"),
                          ),
                          title: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text(
                                ChatMockData[position].name,
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              new Text(
                                ChatMockData[position].time,
                                style: new TextStyle(
                                    color: Colors.grey, fontSize: 14.0),
                              ),
                            ],
                          ),
                          subtitle: new Container(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: new Text(
                              ChatMockData[position].message,
                              style: new TextStyle(
                                  color: Colors.grey, fontSize: 15.0),
                            ),
                          ),
                        )));
              },
              itemCount: ChatMockData.length),
      ),


      );

  }
}