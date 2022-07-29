import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'package:transition/transition.dart';
import 'main.dart';
class terminal_big_ extends StatefulWidget {
  @override
  _terminal_big_State createState() => _terminal_big_State();
}

class _terminal_big_State extends State<terminal_big_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 235, 224, 1),
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.black12,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5,bottom: 5,top: 5),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, Transition(child: MyHomePage(),transitionEffect: TransitionEffect.BOTTOM_TO_TOP));
                    },
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5,bottom: 5,top: 5),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5,bottom: 5,top: 5),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, Transition(child: MyHomePage(),transitionEffect: TransitionEffect.BOTTOM_TO_TOP));
                    },
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightGreen),),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.zero,
            width: MediaQuery.of(context).size.width,
            color: Colors.black45,
            child: Padding(
              padding: const EdgeInsets.only(top: 5,left: 2,right: 2,bottom: 0),
              child: Text("That means I do Frontend with Flutter and Backend with Python\n "
                  "I'm also open to learn new languages and other Stacks if its better for the Project."
                  "\n\n\nMy focus is mainly on programming, but I still managed to add some gimicks to this website."
                  "(hint: Buttons!!)\n\nFeel free to try them out.",
                style: GoogleFonts.cutive(textStyle: TextStyle(color: Colors.white)),),
            ),
          ),
          Expanded(child: Container(color: Colors.black45,))


        ],
      )
    );
  }
}
