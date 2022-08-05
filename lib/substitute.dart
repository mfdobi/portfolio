import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utilities.dart';
import 'package:transition/transition.dart';
import 'main.dart';
import 'get_in_touch.dart';
import 'big_picture.dart';

class substitute_viewer_advanced extends StatefulWidget {
  @override
  _substitute_viewer_advancedState createState() => _substitute_viewer_advancedState();
}

class _substitute_viewer_advancedState extends State<substitute_viewer_advanced> {

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
                "substitute table viewer",
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
            child: Text("Our schools online substitute table program doesn't have an app and an outdated non mobile friendly desktop website that is not very user friendly."
                "\nYou basically had to log in,select your course and select the week. My version does all of that just by opening the app.\n It is also pretty lightweight to make it faster and uses the inbuilt webview as a browser ",
              style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 16,color: Colors.black)) ,),
          ),
          
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 25),
              width: 250,
              child: Image.asset(
                "4.jpg"
              ),
            ),
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
        Text("Development",style: table_text_styling1,),
        Text("-Analyzing Website",style: project_text,),
        Text("-Deciding between displaying the Website in the webview or scraping it for the relevant Data",style: project_text,),
        Text("-Deciding between a sqlite Db or inbuild shared_preferences for storage.",style: project_text,),
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
        Text("Mobile App",style: table_text_styling1,),
        Text("-Flutter App that uses inbuilt Android/Ios WebView to display the important parts of the original website",
          style: project_text,),
        Text("-Inbuilt libraries to get the date/calculate the week and store User Data(courses and login Date)",
        style: project_text,),
        Container(
          height: 200,
        )
      ],
    );
  }
}
