import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'ticketing_view.dart';



class terminal extends StatelessWidget {
  const terminal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 350,
      width: MediaQuery.of(context).size.width*0.5,
      height: 250,
      color: Colors.black12,
      child: Column(
        children: [
          Container(
            height: 25,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5,bottom: 5,top: 5),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent),),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 5,bottom: 5,top: 5),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow),),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 5,bottom: 5,top: 5),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightGreen),),
                ),
              ],
            ),
          ),
          Container(
            height:225 ,
            width: MediaQuery.of(context).size.width*0.5,
            color: Colors.black45,
            child: Padding(
              padding: const EdgeInsets.only(top: 5,left: 2,right: 2),
              child: Text("That means I do Frontend with Flutter and Backend with Python\n "
                  "I'm also open to learn new languages and other Stacks if its better for the Project."
                  "\n\n\nMy focus is mainly on programming, but I still managed to add some gimicks to this website."
                  "(hint: Buttons!!)\n\nFeel free to try them out.",
                style: GoogleFonts.cutive(textStyle: TextStyle(color: Colors.white)),),
            ),
          )
        ],
      ),
    );
  }
}