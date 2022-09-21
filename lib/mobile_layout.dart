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


class mobile_layout extends StatefulWidget {
  const mobile_layout({
    Key? key,
  }) : super(key: key);

  @override
  _mobile_layoutState createState() => _mobile_layoutState();
}

class _mobile_layoutState extends State<mobile_layout> {

  final project = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //horizontal_phone(),

       UnconstrainedBox(
         child: vertical_phone(project: project,),
       ),
        SizedBox(
          height: 25,
        ),

        terminal(),
        SizedBox(height: 50,),

        Center(
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text("SKILLS",
                style: GoogleFonts.cutive(
                    textStyle: TextStyle(fontSize: 32)),),
            )),

        Skills(),

        Padding(
          key: project,
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
    );
  }
}
