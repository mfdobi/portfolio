import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities.dart';
import 'ticketing_view.dart';

import 'get_in_touch.dart';
import 'skills.dart';
import 'phone.dart';
import 'terminal.dart';
import 'projects.dart';
import 'desktop_layout.dart';

class outlineb extends StatelessWidget {
  const outlineb({
    Key? key,
    required this.project,
  }) : super(key: key);

  final GlobalKey<State<StatefulWidget>> project;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: (){
      helper().void_scroll(project);
    }, child: Text("jshfjh"));
  }
}