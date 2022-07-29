import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'ticketing_view.dart';



class vertical_phone extends StatelessWidget {
  const vertical_phone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(33),
          border: Border.all(color: Colors.black,width: 10,style: BorderStyle.solid)
      ),
      width: 250,
      height: 450,
      child: Column(
        children: [
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(33),topRight: Radius.circular(33)),
                    color: Colors.black),)),
          Container(
            color: Colors.white60,
            height: 350,
            padding: EdgeInsets.all(20),
            child: Stack(
              children: [
                Positioned(
                    top: 1,
                    left: 1,
                    child: SizedBox(
                        width: 180,
                        child: Text("Hi,\nI'm Marc,19 Years old from Germany and code.\n\n"
                            "I make Apps, Websites and other cool stuff with Tools like Python,Django or Flutter.",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 12)),)
                    ))],),),
          Expanded(
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(33),bottomRight: Radius.circular(33)),
                    color: Colors.black),
              child:Row(
                children: [
                  Spacer(),
                  InkWell(
                    onTap: (){
                      
                    },
                    child: Container(
                      width: 31,
                      height: 31,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey,width: 3),
                        color: Colors.black
                      ),
                    ),
                  ),
                  Spacer()
                ],
              )))
        ],
      ),
    );
  }
}