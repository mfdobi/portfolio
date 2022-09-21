import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'ticketing_view.dart';

import 'get_in_touch.dart';
import 'skills.dart';
import 'phone.dart';
import 'terminal.dart';
import 'projects.dart';
import 'desktop_layout.dart';
import 'mobile_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 235, 224, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.only(top: 5),
          child: Text("Marc",
              style: GoogleFonts.cutive(
                  textStyle: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 32))),
        ),
      ),
       body: LayoutBuilder(
         builder: (context, constraints){
           if (constraints.maxWidth >650){
             return desktop_layout();
           }else{
             return mobile_layout();
             //return Text(("smol"));
           }
         },
       ),


       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



