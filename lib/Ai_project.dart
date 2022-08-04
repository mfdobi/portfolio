import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'package:transition/transition.dart';
import 'main.dart';
import 'get_in_touch.dart';
import 'projects.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class ai_project_advanced extends StatefulWidget {
  @override
  _ai_project_advancedState createState() => _ai_project_advancedState();
}

class _ai_project_advancedState extends State<ai_project_advanced> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 235, 224, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Text(
            "<",
            style: GoogleFonts.cutive(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold))),

          onPressed: (){
            Navigator.push(context, Transition(child: MyHomePage(),transitionEffect: TransitionEffect.FADE ));
          },),
        title: Text("Marc",
            style: GoogleFonts.cutive(
                textStyle: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold,fontSize: 32))),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 20,left: 25),
            child: Text(
                "AI Art Project",
                style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 32))),
          ),
          Container(
            padding: EdgeInsets.only(top: 25,left: 5,right: 5),
            margin: EdgeInsets.only(left: 25,right: 25),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 3,color: Colors.black),
                    bottom: BorderSide(width: 3,color: Colors.black))
            ),
            child: Text("This is a Project I made for my art class in school.\n"
                "We were asked to do a remix of an old painting. "
                "I decided to make something Interactive.\n\n"
                "The Website allows users to upload a selfie and that then gets added to the original picture alongside other Faces. "
                "It uses Ai to detect the faces and other Image-manipulation algorithms to cut them out and add them ontop on the original.",
              style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 16,color: Colors.black)) ,),
          ),
          Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.only(top: 25),
            child: Image.asset("balkonmanet_detected.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Center(
              child: Text("How its built",
                style: table_text_styling1,),
            ),
          ),
          project_tech_stack(),

          get_in_touch()
        ],
      ),
    );
  }
}

class project_tech_stack extends StatelessWidget {
  const project_tech_stack({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var widget_list = [
      Flexible(
        child: mobile_app(),
      ),
      Container(
        width: 3,
        height: 300,
        color: Colors.black,
        //padding: EdgeInsets.only(bottom: 25),
        margin: EdgeInsets.only(bottom: 25,right: 10,left: 10),
      ),

      Flexible(
        child: backend(),
      )
    ];


    var widget_list2 = [
      mobile_app(),
      Container(
        height: 3,
        margin: EdgeInsets.only(top: 15,bottom: 15),
        //padding: EdgeInsets.all(15),
        color: Colors.black,
      ),
      backend(),
    ];

    return Container(
      padding: EdgeInsets.only(top: 25,left: 5,right: 5),
      margin: EdgeInsets.only(left: 25,right: 25),
      decoration: BoxDecoration(
        //color: Colors.black26,

          border: Border(
              top: BorderSide(width: 3,color: Colors.black),
              bottom: BorderSide(width: 3,color: Colors.black))
      ),
      child: LayoutBuilder(
          builder: (context,constraints){
            if(constraints.maxWidth>650){
              return Row(
                  children: widget_list
              );
            }else{
              return Column(
                  children: widget_list2
              );
            }
          }),
    );
  }
}

class backend extends StatelessWidget {
  const backend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Backend",style: table_text_styling1,),
        Text("-Consists of Django and python Libraries",style: project_text,),
        Text("-Django as Backend to serve the Image Manipulation Algorithm",style: project_text,),
        Text("- Cv2,matplotlib and PIL to detect faces and do some Image-manipulation ",style: project_text,),
        Container(
          height: 200,
        )
      ],
    );
  }
}

class mobile_app extends StatelessWidget {
  const mobile_app({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Frontend",style: table_text_styling1,),
        Text("-Pure HTML & CSS to upload Images and display the result",
          style: project_text,),
        Container(
          height: 200,
        )
      ],
    );
  }
}
