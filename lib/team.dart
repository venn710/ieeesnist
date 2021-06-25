import 'package:flutter/material.dart';
import './chapters.dart';
class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEAM"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          MyCard(enableca: false,imagepath: 'assets/images/Team/board.png',scale: 4,text: "Board",),
          MyCard(enableca: false,imagepath: 'assets/images/Team/avatar.png',scale: 4,text: "Bare Constitution",),
          MyCard(enableca: false,imagepath: 'assets/images/Team/hall-of-fame.png',scale: 3,text: "Hall Of Fame",)
        ],
      ),
      
    );
  }
}