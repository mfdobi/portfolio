import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'ticketing_view.dart';

class get_in_touch extends StatelessWidget {
  const get_in_touch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  launch("https://www.twitter.com/mfdobner");
                },
                child:
                Container(
                  width: 100,
                  height: 25,
                  color: Colors.black,
                  child: Center(child: Text("Twitter",style: GoogleFonts.cutive(textStyle: TextStyle(color: Colors.white)),)),),
              ),
              InkWell(
                onTap: (){
                  launch("https://www.instagram.com/mfdobi");
                },
                child:
                Container(
                  width: 100,
                  height: 25,
                  color: Colors.black,
                  child: Center(child: Text("Instagram",style: GoogleFonts.cutive(textStyle: TextStyle(color: Colors.white)),)),),
              ),
              InkWell(
                onTap: (){
                  launch("https://www.linkedin.com/in/marc-dobner");
                },
                child:
                Container(
                  width: 100,
                  height: 25,
                  color: Colors.black,
                  child: Center(child: Text("LinkedIn",style: GoogleFonts.cutive(textStyle: TextStyle(color: Colors.white)),)),),
              ),
            ],
          ),
        ),
        Text("or write me an email:\ndevelopedbymarc@gmail.com",style: GoogleFonts.cutive(),),
      ],
    );
  }
}