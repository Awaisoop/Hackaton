import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackaton/pages/chat_page.dart';
import 'package:hackaton/pages/landing_page.dart';
import 'package:hackaton/pages/login_page.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:landing_page(),
    );
  }

}