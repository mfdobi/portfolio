import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'ticketing_view.dart';
import 'get_in_touch.dart';
import 'package:url_launcher/url_launcher.dart';
import 'desktop_layout.dart';



class vertical_phone extends StatefulWidget {
  const vertical_phone({
    Key? key,
    required  this.project,
  }) : super(key: key);

  final GlobalKey<State<StatefulWidget>> project;


  @override
  _vertical_phoneState createState() => _vertical_phoneState();
}

class _vertical_phoneState extends State<vertical_phone> {
  var default_screen;
  var default_color;
  var default_state = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    default_screen = default_phone();
    default_color = BoxDecoration(color: Colors.white60);

  }

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
            //color: Colors.white60,
            decoration: default_color,
            height: 350,
            padding: EdgeInsets.all(20),
            child: Stack(
              children: [

                Positioned(
                    top: 1,
                    left: 1,
                    child: default_screen)],),),

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
                      //print("hfjsf");
                      default_state = default_state + 1;
                      //print(default_state);
                      if (default_state.isEven){
                        setState(() {
                          default_screen = default_phon(project: widget.project,);
                          default_color = BoxDecoration(color: Colors.white60,image: DecorationImage(image: AssetImage("assets/phone_background.jpg"),fit: BoxFit.fill));
                        });
                      }else{
                        setState(() {
                          default_screen = default_phone();
                          default_color = BoxDecoration(color: Colors.white60);
                        });
                      }

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

  test(){
    print("test");
    var b = "Ballal";
    return b;
  }
}

class default_phone extends StatelessWidget {
  const default_phone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 180,

        height: 350,
        child: Text("Hi,\nI'm Marc,19 Years old from Germany and code...\n\n"
            "I make Apps, Websites and other cool stuff with Tools like Python, Django or Flutter.",
          overflow: TextOverflow.ellipsis,
          maxLines: 10,
          style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 12)),)
    );
  }
}

class default_phon extends StatelessWidget {
  const default_phon({
    Key? key,
    required this.project
  }) : super(key: key);

  final GlobalKey<State<StatefulWidget>> project;


  @override
  Widget build(BuildContext context) {
    final double size = 40;
    return SizedBox(
        width: 180,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Spacer(),
            app_icon(size: size,
              link: "https://www.instagram.com/mfdobi",
              Qr_code: "assets/Instagram.png",
              icon: "assets/ig_icon.png",),
            //Spacer(),
            app_icon(size: size,
                Qr_code: "assets/linkedin.png" ,
                link: "https://www.linkedin.com/in/marc-dobner",
                icon: "assets/li_icon.png"),

            app_icon(size: size,
                Qr_code: "assets/twitter.png",
                link: "https://www.twitter.com/mfdobner",
                icon: "assets/tw_icon.png"),
            //Spacer(),

            //Spacer(),
            InkWell(
              onTap: (){
                print("jump to section");
                helper().void_scroll(project);

              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/gallery.png",width: 40,height: 40,),
              ),
            ),
            //Spacer()
          ],
        ),

        /*
        child: Text("H",
          overflow: TextOverflow.ellipsis,
          maxLines: 10,
          style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 12)),)
        */
    );
  }
}

class app_icon extends StatelessWidget {
  final String Qr_code;
  final String link;
  final String icon;
  const app_icon({
    Key? key,
    required this.size,
    required this.Qr_code,
    required this.link,
    required this.icon,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()async{
        //print("ig");
        showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Center(child: Text("open on your phone",style: table_text_styling1,)),
                content: Container(
                  child: Image.asset(Qr_code),
                ),
                backgroundColor: Color.fromRGBO(238, 235, 224, 1),
              );
            });
        await Future.delayed(Duration(seconds: 3));
        launch(link);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(icon,width: size,height: 40,),
      ),
    );
  }
}