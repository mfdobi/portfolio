import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'ticketing_view.dart';


class projects extends StatelessWidget {
  const projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var screensize = MediaQuery.of(context).size;
    return Column(
      children: [

        ticketing(),

        Abode(),

        cross_row(),

        substitude(),
      ],
    );
  }
}

class ticketing extends StatelessWidget {
  const ticketing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      padding: EdgeInsets.only(top: 25,left: 5,right: 5),
      margin: EdgeInsets.only(left: 25,right: 25),
      decoration: BoxDecoration(
        //color: Colors.black26,

          border: Border(
              top: BorderSide(width: 3,color: Colors.black),
              bottom: BorderSide(width: 3,color: Colors.black))
      ),
      child: Row(
        children: [
          Flexible(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 3,left: 0,right: 2),
                  child: Text("Ticketing system",style: table_text_styling1,textAlign: TextAlign.start,),
                ),
                Text("Easy QR Code based ticketing system for events, that creates the invited based on a guest list.",style: project_text),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ticketng_advanced()));
                  },
                  child: Text("link to more details",
                      style: GoogleFonts.cutive(
                          fontSize: 12,
                          color: Colors.black,
                          decoration: TextDecoration.underline)),
                )
              ],mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.all(15),
            decoration:
            BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("5.jpg"))),
          )
        ],
      ),);
  }
}

class substitude extends StatelessWidget {
  const substitude({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.only(top: 25,left: 5,right: 5),
      margin: EdgeInsets.only(left: 25,right: 25,bottom: 25),
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 0,color: Colors.black),
              bottom: BorderSide(width: 3,color: Colors.black))
      ),
      child: Row(
        children: [
          Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.all(15),
            decoration:
            BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("4.jpg"))),
          ),

          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Substitute table viewer",style: table_text_styling1,),
                Text("A simple, lightweight and fast viewer for my shools substitude table, that automatically loggs you in and selects your course/year.",style: project_text,),
                InkWell(
                  onTap: (){

                  },
                  child: Text("link to more details",
                      style: GoogleFonts.cutive(
                          fontSize: 12,
                          color: Colors.black,
                          decoration: TextDecoration.underline)),
                ),
              ],),
          )
        ],
      ),);
  }
}

class Abode extends StatelessWidget {
  const Abode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.only(top: 25,left: 5,right: 5),
      margin: EdgeInsets.only(left: 25,right: 25),
      decoration: BoxDecoration(
        //color: Colors.black26,

          border: Border(
              top: BorderSide(width: 0,color: Colors.black),
              bottom: BorderSide(width: 0,color: Colors.black))
      ),
      child: Row(
        children: [
          Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.all(15),
            decoration:
            BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("AppIcon.png"))),
          ),
          Flexible(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Abode",style: table_text_styling1,),
                Text("Browse Property listings by simply swiping through them!!",style: project_text,),
                InkWell(
                  onTap: (){
                    launch("https://apps.apple.com/de/app/abode/id1577839586");

                  },
                  child: Text("link to AppStore",
                      style: GoogleFonts.cutive(
                          fontSize: 12,
                          color: Colors.black,
                          decoration: TextDecoration.underline)),
                ),
                Spacer(),

                Text("hint: servers may have some downtime",style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 12)),)
              ],
            ),
          ),
        ],
      ) ,);
  }
}



class cross_row extends StatelessWidget {
  const cross_row({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var widget_list1 = [
      Flexible(

          child: ai_school_project()
      ),
      Container(
        width: 3,
        height: 300,
        color: Colors.black,
        //padding: EdgeInsets.only(bottom: 25),
        margin: EdgeInsets.only(bottom: 25,right: 10,left: 10),
      ),

      Flexible(
          child: dataset_creator()
      ),
      //Container(width: 200,height: 200,color: Colors.black26,)
    ];

    var widget_list2 = [
      ai_school_project(),
      Container(
        height: 3,
        margin: EdgeInsets.only(top: 15,bottom: 15),
        //padding: EdgeInsets.all(15),
        color: Colors.black,
      ),
      dataset_creator(),
      //Container(width: 200,height: 200,color: Colors.black26,)
    ];

    return Container(
      //height: 400,
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
          if (constraints.maxWidth >700){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: widget_list1,
            );
          }else{
            return Container(
              margin: EdgeInsets.only(bottom: 25),
              child: Column(
                children: widget_list2,
              ),
            );
          }
        },
      ));
  }
}

class dataset_creator extends StatelessWidget {
  const dataset_creator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Dataset-creator",style: table_text_styling1,),
        Text("Create Image Bases Datasets on your phone.\nMade for highly specific use cases. The finished Dataset can then be loaded directly into pytorch",style: project_text,),
        InkWell(
          onTap: (){

          },
          child: Text("link to more details",
              style: GoogleFonts.cutive(
                  fontSize: 12,
                  color: Colors.black,
                  decoration: TextDecoration.underline)),
        ),
        Container(
          width: 200,
          height: 200,
          decoration:
          BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("2.jpg"))),
        )
      ],
    );
  }
}

class ai_school_project extends StatelessWidget {
  const ai_school_project({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("AI Art School Project",style: table_text_styling1),
        Text("An Ai Art Projects that allows you to upload a selfie and be in a historic artwork with other users",style: project_text,),
        InkWell(
          onTap: (){

          },
          child: Text("link to more details",
              style: GoogleFonts.cutive(
                  fontSize: 12,
                  color: Colors.black,
                  decoration: TextDecoration.underline)),
        ),
        Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.all(15),
          decoration:
          BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("latest.png"))),
        )
      ],
    );
  }
}
