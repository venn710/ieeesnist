import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
          GestureDetector(onTap: ()async{
            const url="https://docs.google.com/forms/d/e/1FAIpQLSfoF1m1ZBgemFZ1iORvYfDHZrRgfWFkBAvtavuhrsscbHM3Eg/viewform";
            await canLaunch(url)? await launch(url):throw 'Could not launch $url';
            },
            child: MyCard(enableca: false,imagepath: 'assets/images/StudentServices/resume.png',scale:4,text: "Resume Builder",)),
          GestureDetector(
            onTap: ()async
            {
              const url="https://docs.google.com/forms/d/e/1FAIpQLSfjbtqyrnd5-Y6yhoNCvyYNolrYKoPNDgmPlwPjzxgW030Zkw/viewform";
              await canLaunch(url)? await launch(url):throw 'Could not launch $url';
            },
            child: MyCard(enableca: false,imagepath: 'assets/images/StudentServices/seminar.png',scale:4,text: "Texh-Sem Assistance",)),
          GestureDetector(
            onTap: ()async
            {
              const url="https://docs.google.com/forms/d/e/1FAIpQLSfBWoD6bqtRLOPIx81HuPCTgDjRO843UKwaDKaM2bB6mFbwEg/viewform";
              await canLaunch(url)? await launch(url):throw 'Could not launch $url';
            },
            child: MyCard(enableca: false,imagepath: 'assets/images/StudentServices/diary.png',scale:4,text: "Journal & Paper",)),         
          GestureDetector(
            onTap: ()async
            {
              const url="https://docs.google.com/forms/d/e/1FAIpQLSe4oJKyerzd8lpPRwaxhyeL6Uk5xv4T9sNdNbZ3T5gjp_fz_A/viewform";
              await canLaunch(url)? await launch(url):throw 'Could not launch $url';
            },
            child: MyCard(enableca: false,imagepath: 'assets/images/StudentServices/linkedinallstar.png',scale:4,text: "Linkedin All Star",))
        ],
      ),
    );
  }
}