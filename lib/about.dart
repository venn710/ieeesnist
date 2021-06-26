import 'package:flutter/material.dart';
import 'package:ieee/about/ieee.dart';
import 'package:ieee/about/ieeehyd.dart';
import 'package:ieee/about/ieeer10.dart';
import 'package:ieee/knowmore.dart';
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
          GestureDetector(
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>IEEE())),
            child: MyCard(enableca: true,imagepath: 'assets/images/About/ieee.jpeg',scale:2,text:"IEEE",)),
          GestureDetector(
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>IEEEHYD())),
            child: MyCard(enableca: true,imagepath: 'assets/images/About/hydsec.png',scale: 5,text:"IEEE Hyd Section",)),
          GestureDetector(
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>IEEER10())),
            child: MyCard(enableca: true,imagepath: 'assets/images/About/ieeeregion.png',scale:5,text:"IEEE R 10",)),
          GestureDetector(
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>Knowmore())),
            child: MyCard(enableca: true,imagepath: 'assets/images/About/IEEE SNIST.png',scale:6,text:"IEEE-SNIST SB",)),
        ],

      ),
    );
  }
}