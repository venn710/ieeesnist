import 'package:flutter/material.dart';
import 'package:ieee/Team/ex-com.dart';
import 'package:ieee/Team/hall-of-fame.dart';
import 'package:url_launcher/url_launcher.dart';
import './chapters.dart';
class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  bool _loader=false;
  void initState()
  {
    _loader=false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEAM"),
        centerTitle: true,
      ),
      body: (_loader)?CircularProgressIndicator():ListView(
        children: [
          GestureDetector(
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>EXECCOMM())),
            child: MyCard(enableca: false,imagepath: 'assets/images/Team/board.png',scale: 4,text: "Board",)),
          GestureDetector(onTap: ()async
          {
              const url="https://docs.google.com/forms/d/e/1FAIpQLSdaHnPd-ZogYD0w3SVsQpwE_Yw-Pskkew69j3CaeE50uVJaSg/viewform";
              await canLaunch(url)? await launch(url):throw 'Could not launch $url';
          }, child: MyCard(enableca: false,imagepath: 'assets/images/Team/avatar.png',scale: 4,text: "Bare Constitution",)),
          GestureDetector(
            onTap: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context)
              {
                return HALLOFFAME();
              }));
            },
            child: MyCard(enableca: false,imagepath: 'assets/images/Team/hall-of-fame.png',scale: 3,text: "Hall Of Fame",))
        ],
      ),
      
    );
  }
}