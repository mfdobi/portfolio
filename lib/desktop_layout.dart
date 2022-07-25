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

class desktop_layout extends StatelessWidget {
  const desktop_layout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //horizontal_phone(),
        Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.10),
                  child: vertical_phone(),
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
                terminal(),
              ],
            ),
            Spacer()
          ],
        ),
        SizedBox(height: 50,),

        Center(child: Text("SKILLS",style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 32)),)),

        Skills(),

        Padding(
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
