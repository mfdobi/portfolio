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
import 'testbutton.dart';


class desktop_layout extends StatefulWidget {
  /*
  const desktop_layout({
    Key? key,
  }) : super(key: key);
*/
  @override
  _desktop_layoutState createState() => _desktop_layoutState();

  var d;

/*
  final project = _desktop_layoutState().p;

  void_scroll(){
    Scrollable.ensureVisible(project.currentContext!);
    print("wtf");
  }

*/
}

class _desktop_layoutState extends State<desktop_layout> {
  //final p = GlobalKey();

  final project = GlobalKey();

  void_scroll(){
    Scrollable.ensureVisible(project.currentContext!);
  }



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //horizontal_phone(),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.10),
                    child: vertical_phone(project: project,),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  SizedBox(height: 350,),
                  terminal()
                ],
              ),
              Spacer()
            ],
          ),
          SizedBox(height: 50,),

          //outlineb(project: project),



          Center(child: Text("SKILLS",style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 32)),)),

          Skills(),

          Padding(key: project,
            padding: const EdgeInsets.only(top: 25,bottom: 20,left: 25,right: 25),
            child: Text("MY PROJECTS",style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 32)),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20,left: 25,right: 25),
            child: Text("Here are some of my Projects I've build.\n"
                "Note: Some projects are older and might not be (fully) online. "
                "But I can provide some more Information or a Demo if you want.", style: GoogleFonts.cutive(),),
          ),
          projects(),
          Center(
              child: Text(
                "Get in Touch",
                style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 32)),)),
          get_in_touch(),
          SizedBox(height: 200,)
        ],
      ),
    );
  }
}



class helper {

  void_scroll(var i){
    Scrollable.ensureVisible(i.currentContext!);
  }

  void_print(){
    print("voidprint");
  }

}