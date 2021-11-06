
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CameraBarPage extends StatefulWidget {
  @override
  CameraBarPageState createState() => CameraBarPageState();

  final VoidCallback onClose;

  CameraBarPage(this.onClose);
}

class CameraBarPageState extends State<CameraBarPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (leading: IconButton(icon: Icon(Icons.close), onPressed: widget.onClose,)),
      body: Container(
        alignment: AlignmentDirectional.center,
        width: double.infinity,
        height: double.infinity,
        child: Text(
          "Story Preview",
          style: GoogleFonts.pacificoTextTheme(Theme.of(context).textTheme).headline5,
        )
      ),
    );
  }
}