import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Marc",
            style: GoogleFonts.cutive(
                textStyle: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold,fontSize: 32))),
      ),
       body: ListView(
         children: [
           //horizontal_phone(),
           Row(
             children: [
               Column(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.10),
                     child: vertical_phone(),
                   ),
                   SizedBox(
                     height: 50,
                   )
                 ],
               ),
               Spacer(),
               Column(
                 children: [
                   SizedBox(height: 350,),
                   terminal(),
                 ],
               ),
               Spacer()
             ],
           ),
           SizedBox(height: 50,),
           Center(child: Text("SKILLS",style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 32)),)),
           Container(
             height: 200,
             color: Colors.grey,
             padding: EdgeInsets.only(top: 25),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [ 
                 Column(
                   children: [
                     Text("WEB(FRONTEND)"),
                     Text("-HTML5"),
                     Text("-CSS(basics)"),
                     Text("-Flutter for Web")],),

                 Column(
                   children: [
                     Text("MOBILE"),
                     Text("-Flutter for ios&android")],),

                 Column(
                   children: [
                     Text("WEB(BACKEND)"),
                     Text("-Flask"),
                     Text("-Django")],),

                 Column(
                   children: [
                     Text("OTHER FRAMEWORKS/TECHNIQUES"),
                     Text("-Pytorch"),
                     Text("-Python for scripting/General"),
                     Text("-Dart for scripting"),
                     Text("-Database Management with ORMS like Django orm and peewee")],),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 25),
             child: Text("MY PROJECTS",style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 32)),),
           ),
           Text("Here are some of my Projects I've build.\n"
               "Note: Some projects are older and might not be (fully) online. "
               "But I can provide some more Information or a Demo if you want.", style: GoogleFonts.cutive(),),
           Container(height: 200,color: Colors.black12,),
           Container(height: 200,color: Colors.black12,),
           Container(height: 200,color: Colors.black12,),
           Container(height: 200,color: Colors.black12,),
           Text("Get in Touch")
         ],
       ),


       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class terminal extends StatelessWidget {
  const terminal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 350,
      width: MediaQuery.of(context).size.width*0.5,
      height: 250,
      color: Colors.black12,
      child: Column(
        children: [
          Container(
            height: 25,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5,bottom: 5,top: 5),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent),),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 5,bottom: 5,top: 5),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow),),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 5,bottom: 5,top: 5),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightGreen),),
                ),
              ],
            ),
          ),
          Container(
            height:225 ,
            width: MediaQuery.of(context).size.width*0.5,
            color: Colors.black45,
            child: Text("That means I do Frontend with Flutter and Backend with Python\n I'm also open to learn new languages and other Stacks if its better for the Project.",style: GoogleFonts.cutive(textStyle: TextStyle(color: Colors.white)),),
          )
        ],
      ),
    );
  }
}

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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(33),bottomRight: Radius.circular(33)),
                    color: Colors.black),))
        ],
      ),
    );
  }
}

class horizontal_phone extends StatelessWidget {
  const horizontal_phone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            border: Border.all(color: Colors.black,style: BorderStyle.solid,width: 10)
          ),
          width: 500,
          height: 200,
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.black)),
              //Expanded(child: Container(color: Colors.white,)),
              Container(
                color: Colors.white,
                width: 375,
                child: Stack(
                  children: [
                    Positioned(child: Text("sjhfjsfh"),top: 1,bottom: 1,)
                  ],
                )),
              Expanded(child: Container(color: Colors.black)),
            ],),
        ),
        Spacer()
      ],
    );
  }
}
