import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'ticketing_view.dart';


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
