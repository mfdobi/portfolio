import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'package:transition/transition.dart';
import 'main.dart';
import 'get_in_touch.dart';
import 'projects.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class ticketng_advanced extends StatefulWidget {
  @override
  _ticketng_advancedState createState() => _ticketng_advancedState();
}

class _ticketng_advancedState extends State<ticketng_advanced> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     _controller = YoutubePlayerController(
      initialVideoId: '9-oLfAuzHnk',
      params: YoutubePlayerParams(
        //playlist: ['nPt8bK2gbaU', 'gQDByCdjUXw'], // Defining custom playlist
        //startAt: Duration(seconds: 30),
        showControls: true,
        showFullscreenButton: true,
      ),
    );
     
     _controller.setSize(Size(200, 200));
  }

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
                    fontWeight: FontWeight.bold)),),
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
                "Ticketing System",
                style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 32))),
          ),
          Container(
            padding: EdgeInsets.only(top: 25,left: 5,right: 5),
            margin: EdgeInsets.only(left: 25,right: 25),
            decoration: BoxDecoration(
              //color: Colors.black26,

                border: Border(
                    top: BorderSide(width: 3,color: Colors.black),
                    bottom: BorderSide(width: 3,color: Colors.black))
            ),
            child: Text("This is a simply Ticketing system for small events. "
                "It generates Qr Codes from a guest list and then scans them to check if they are valid."
                "\nIt can check, if the code is valid,invalid or is valid, but already scanned.",
              style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 16,color: Colors.black)) ,),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20,top: 20),
            child: Center(child: Text("Video",style: table_text_styling1,)),
          ),
          Row(
            children: [
              Spacer(),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 300,maxWidth: 300
                ),
                child: YoutubePlayerIFrame(
                  controller: _controller,
                  //aspectRatio: 16 / 9,
                ),
              ),
              Spacer()
            ]
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
        Text("-Consists of Django,Django-rest-framework and Django ORM",style: project_text,),
        Text("-Checks if QR Code Data is valid by"
            " comparing it with the Database Entries and returns result as Json",style: project_text,),
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
        Text("-Flutter to build the client, "
            "that scans the codes and sends the data to the backend for validation."
            " The app then displays the result.",
          style: project_text,),
        Container(
          height: 200,
        )
      ],
    );
  }
}
