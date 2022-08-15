import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utilities.dart';
import 'package:transition/transition.dart';
import 'main.dart';
import 'get_in_touch.dart';
import 'big_picture.dart';

class about_this_page_advanced extends StatefulWidget {
  @override
  _about_this_page_advancedState createState() => _about_this_page_advancedState();
}

class _about_this_page_advancedState extends State<about_this_page_advanced> {

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
                "About this page",
                style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 32,decoration: TextDecoration.underline))),
          ),
          Container(
            padding: EdgeInsets.only(top: 25,left: 5,right: 5),
            margin: EdgeInsets.only(left: 25,right: 25),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 3,color: Colors.black),
                    bottom: BorderSide(width: 3,color: Colors.black))
            ),
            child: Text("Learn more about this page",
              style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 16,color: Colors.black)) ,),
          ),
          SizedBox(
            height: 50,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 20,left: 25),
            child: Text(
                "Inspiration",
                style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 25))),
          ),

          Container(
            padding: EdgeInsets.only(top: 25,left: 5,right: 5),
            margin: EdgeInsets.only(left: 25,right: 25),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 3,color: Colors.black),
                    bottom: BorderSide(width: 3,color: Colors.black))
            ),
            child: Text("I'm a full-stack developer and not a designer, but I appreciate good design/art and the Idea behind it."
                "This Website might not look as good as a website from a professional Designer,but I want you to understand what I tried to do.\n"
                "The main Inspiration was the Design of a newspaper with the columns/rows and black bars between them. I think it's a "
                "good Layout to display projects.\nThe digital screens at the beginning of this site are the mediums I mainly develop for"
                " and also interactive to show some of my front-end skills.",
              style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 16,color: Colors.black)) ,),
          ),
          SizedBox(
            height: 50,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Center(
              child: Text("How its built",
                style: table_text_styling1,),
            ),
          ),
          project_tech_stack(),

          SizedBox(
            height: 50,
          ),

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
        Text("Hosting",style: table_text_styling1,),
        Text("-Github-pages ",style: project_text,),
        //Text("-Deciding between displaying the Website in the webview or scraping it for the relevant Data",style: project_text,),
        //Text("-Deciding between a sqlite Db or inbuild shared_preferences for storage.",style: project_text,),
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
        Text("-Flutter for Web",
          style: project_text,),
        Text("-Libraries like: Google Fonts,url_launcher,youtube-player",
          style: project_text,),
        Container(
          height: 200,
        )
      ],
    );
  }
}
