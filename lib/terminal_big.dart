import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';

class terminal_big_ extends StatefulWidget {
  @override
  _terminal_big_State createState() => _terminal_big_State();
}

class _terminal_big_State extends State<terminal_big_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fuck yeah"),
      ),
      body: ListView(
        children: [
          Text("terminal"),
        ],
      ),
    );
  }
}
