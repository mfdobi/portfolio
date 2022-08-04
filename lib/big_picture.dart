import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utilities.dart';
import 'package:transition/transition.dart';
import 'main.dart';
import 'get_in_touch.dart';

class big_view extends StatefulWidget {
  final Image ;
  //big_view({Key key, @required this.Image}) : super(key: key);
  const big_view({
    Key? key,
    this.Image
  }) : super(key: key);

  @override
  _big_viewState createState() => _big_viewState();
}

class _big_viewState extends State<big_view> {
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
      body: LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth>600){
            return ListView.builder(
            itemCount: widget.Image.length,
            itemBuilder: (context,int index){
            return Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width *0.25,
                  right: MediaQuery.of(context).size.width *0.25),
            child: Image.asset(widget.Image[index]),
            );
            });
            }else{
            return ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: widget.Image.length,
                itemBuilder: (context,index){
                  return Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10
                    ),
                    child: Image.asset(widget.Image[index]),
                  );
                });
          }
      },
      )
    );
  }
}
