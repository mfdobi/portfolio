import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utilities.dart';

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
      backgroundColor: Color.fromRGBO(238, 235, 224, 1),
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

           FittedBox(
             fit: BoxFit.scaleDown,
             child: Container(
               height: 200,
               //color: Colors.grey,
               padding: EdgeInsets.only(top: 25,left: 5,right: 5),
               margin: EdgeInsets.only(left: 25,right: 25),
               decoration: BoxDecoration(
                   border: Border(
                       bottom: BorderSide(width: 3,color: Colors.black26),
                       top: BorderSide(width: 3,color: Colors.black26),
                   )),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(bottom: 8),
                         child: Text("WEB(FRONTEND)",style: table_text_styling1,),
                       ),
                       Text("-HTML5",style: table_text_styling,),
                       Text("-CSS(basics)",style: table_text_styling,),
                       Text("-Flutter for Web",style: table_text_styling,)],),

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
           ),


           Padding(
             padding: const EdgeInsets.only(top: 25,bottom: 20),
             child: Text("MY PROJECTS",style: GoogleFonts.cutive(textStyle: TextStyle(fontSize: 32)),),
           ),
           Padding(
             padding: const EdgeInsets.only(bottom: 20),
             child: Text("Here are some of my Projects I've build.\n"
                 "Note: Some projects are older and might not be (fully) online. "
                 "But I can provide some more Information or a Demo if you want.", style: GoogleFonts.cutive(),),
           ),

           
           Container(
             height: 200,
             decoration: BoxDecoration(
               //color: Colors.black26,
               border: Border(top: BorderSide(width: 3,color: Colors.black26),bottom: BorderSide(width: 3,color: Colors.black26))
             ),
             child: Row(
               children: [
                 Column(
                   children: [
                     Text("Ticketing system"),
                     Text("Description of ticketing system"),
                     Text("link to more details")
                   ],
                 ),
                 Container(width: 100,height: 100,color: Colors.black26)
               ],
             ),),
           Container(
             height: 200,
             color: Colors.black12,
             child: Row(
               children: [
                 Container(
                   width: 200,
                   height: 200,
                   color: Colors.black26,
                 ),
                 Column(
                   children: [
                     Text("Abode"),
                     Text("Browse Property listings by simply swiping through them!!"),
                     Text("links to app store"),
                     Text("hint: servers may have some downtime")
                   ],
                 ),
               ],
             ) ,),
           Container(
             height: 200,
             color: Colors.black12,
             child: Row(
               children: [
                 Column(
                   children: [
                     Text("Ai Art"),
                     Text("Description"),
                   ],
                 ),
                 Container(width: 200,height: 200,color: Colors.black26,)
               ],
             ) ,),
           Container(
             height: 200,
             color: Colors.black12,
             child: Row(
               children: [
                 Container(width: 200,height: 200,color: Colors.black26,),
                 Column(
                   children: [
                     Text("Substitute table viewer"),
                     Text("Description short"),
                     Text("link to tech details"),
                   ],)
               ],
             ),),
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
            child: Padding(
              padding: const EdgeInsets.only(top: 5,left: 2,right: 2),
              child: Text("That means I do Frontend with Flutter and Backend with Python\n "
                  "I'm also open to learn new languages and other Stacks if its better for the Project."
                  "\n\n\nMy focus is mainly on programming, but I still managed to add some gimicks to this website."
                  "(hint: Buttons!!)\n\nFeel free to try them out.",
                style: GoogleFonts.cutive(textStyle: TextStyle(color: Colors.white)),),
            ),
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
