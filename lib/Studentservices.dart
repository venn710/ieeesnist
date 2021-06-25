import 'package:flutter/material.dart';
import './chapters.dart';
class Studentservices extends StatefulWidget {
  @override
  _StudentservicesState createState() => _StudentservicesState();
}

class _StudentservicesState extends State<Studentservices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STUDENT SUPPORT"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          MyCard(enableca: false,imagepath: 'assets/images/StudentServices/resume.png',scale:4,text: "Resume Builder",),
          MyCard(enableca: false,imagepath: 'assets/images/StudentServices/seminar.png',scale:4,text: "Texh-Sem Assistance",),
          MyCard(enableca: false,imagepath: 'assets/images/StudentServices/diary.png',scale:4,text: "Journal & Paper",),         
          MyCard(enableca: false,imagepath: 'assets/images/StudentServices/linkedinallstar.png',scale:4,text: "Linkedin All Star",)
        ],
      ),
    );
  }
}