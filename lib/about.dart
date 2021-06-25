import 'package:flutter/material.dart';
import './chapters.dart';
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ABOUT"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          MyCard(enableca: true,imagepath: 'assets/images/About/ieee.jpeg',scale:2,text:"IEEE",),
          MyCard(enableca: true,imagepath: 'assets/images/About/hydsec.png',scale: 5,text:"IEEE Hyd Section",),
          MyCard(enableca: true,imagepath: 'assets/images/About/ieeeregion.png',scale:5,text:"IEEE R 10",),
          MyCard(enableca: true,imagepath: 'assets/images/About/IEEE SNIST.png',scale:6,text:"IEEE-SNIST SB",),
        ],

      ),
    );
  }
}