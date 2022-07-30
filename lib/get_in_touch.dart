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

              Social_inkwell(title: "Twitter", link: "https://www.twitter.com/mfdobner", image: "twitter.png"),
              /*
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
              ),*/
              Social_inkwell(title: "Instagram", link: "https://www.instagram.com/mfdobi", image: "Instagram.png"),


              Social_inkwell(title: "LinkedIn",link: "https://www.linkedin.com/in/marc-dobner",image: "linkedin.png",),
            ],
          ),
        ),
        Text("or write me an email:\ndevelopedbymarc@gmail.com",style: GoogleFonts.cutive(),),
      ],
    );
  }
}

class Social_inkwell extends StatelessWidget {
  final String title;
  final String link;
  final String image;

  const Social_inkwell({
    Key? key,
    required this.title,
    required this.link,
    required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()async{
        showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Center(child: Text("open on your phone",style: table_text_styling1,)),
                content: Container(
                  child: Image.asset(image),
                ),
                backgroundColor: Color.fromRGBO(238, 235, 224, 1),

              );
            });
        await Future.delayed(Duration(seconds: 3));
        launch(link);

      },
      child:
      Container(
        width: 100,
        height: 25,
        color: Colors.black,
        child: Center(child: Text("${title}",style: GoogleFonts.cutive(textStyle: TextStyle(color: Colors.white)),)),),
    );
  }
}