import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utilities.dart';
import 'package:transition/transition.dart';
import 'main.dart';
import 'get_in_touch.dart';
import 'big_picture.dart';

class dataset_creator_advanced extends StatefulWidget {
  @override
  _dataset_creator_advancedState createState() => _dataset_creator_advancedState();
}

class _dataset_creator_advancedState extends State<dataset_creator_advanced> {

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
                "Dataset_creator",
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
            child: Text("I got a bit into AI(Object Recognition) and Pytorch in 2020 and "
                "wanted to build some specific Classifiers fot gesture recognition using custom gestures."
                "\nThis meant, that I had to build a Dataset by making photos of the gestures in different situations. "
                "To make it a lot easier for me I decided to make an App for that, that takes the Photos and then puts them in a Folder structure Pytorch can read automatically.",
              style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 16,color: Colors.black)) ,),
          ),
          
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Image_to_big(image: "assets/1.jpg",),

                Image_to_big(image: "assets/2.jpg"),

                Image_to_big(image: "assets/3.jpg"),

              ],),
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

class Image_to_big extends StatelessWidget {
  final String image;
  const Image_to_big({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: InkWell(
        onTap: (){
          Navigator.push(context, Transition(child: big_view(Image: ["assets/1.jpg","assets/2.jpg","assets/3.jpg"]),transitionEffect: TransitionEffect.BOTTOM_TO_TOP));
        },
        child: Container(
          width: 200,
          height: 200,
          padding: EdgeInsets.only(top: 25),
          child: Image.asset(image),
        ),
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
        Text("Tools",style: table_text_styling1,),
        Text("-Python Script to divide the Dataset into a training & validation Set based on Parameters like: percentage and randomness",style: project_text,),
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
        Text("-Flutter App that uses the Camera and inbuilt storage APIs",
          style: project_text,),
        Container(
          height: 200,
        )
      ],
    );
  }
}
