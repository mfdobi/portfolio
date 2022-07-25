import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'ticketing_view.dart';


class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        height: 200,
        //color: Colors.grey,
        padding: EdgeInsets.only(top: 25,left: 5,right: 5),
        margin: EdgeInsets.only(left: 25,right: 25),
        decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 3,color: Colors.black),
              top: BorderSide(width: 3,color: Colors.black),
            )),
        child: Row(
          children: [
            Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text("WEB(FRONTEND)",style: table_text_styling1,),
                  ),
                  Text("-HTML5",style: table_text_styling,),
                  Text("-CSS(basics)",style: table_text_styling,),
                  Text("-Flutter for Web",style: table_text_styling,)]),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text("MOBILE",style: table_text_styling1,),
                ),
                Text("-Flutter for ios&android",style: table_text_styling,)],),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text("WEB(BACKEND)",style: table_text_styling1,),
                ),
                Text("-Flask",style: table_text_styling,),
                Text("-Django",style: table_text_styling,)],),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text("OTHER FRAMEWORKS/TECHNIQUES",style: table_text_styling1,),
                ),
                Text("-Pytorch",style: table_text_styling,),
                Text("-Python for scripting/General",style: table_text_styling,),
                Text("-Dart for scripting",style: table_text_styling,),
                Text("-Database Management with ORMS like Django orm and peewee",style: table_text_styling,)],),
          ],
        ),
      ),
    );
  }
}