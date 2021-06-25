import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './main.dart';
class Knowmore extends StatefulWidget {
  @override
  _KnowmoreState createState() => _KnowmoreState();
}

class _KnowmoreState extends State<Knowmore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                color: Colors.lime[100],
                borderRadius: BorderRadius.circular(20),
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("IEEE - SNIST SB",style: TextStyle(fontSize: 30),),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[200],
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("IEEE-SNIST was founded 15 years ago and under the guidance of our Director sir, Dr.Narasimha Reddy and our Student Branch Counselor, Dr K. Sumanth, we have grown to be a venerable team that oversees technical activities and aims to impart a spark of innovation in students. We also have a Sister Branch: The IEEE SNIST Computer Society (CS), and an IEEE Affinity Group: The IEEE SNIST Women In Engineering (WIE).",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('We are a group of fun-loving and lively engineering students (undergrads and graduates) who wish to research and learn about innovation in technology, and to discover our passions while making a difference and creating a change in our community.',style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("There are a lot of activities taken up by IEEE-SNIST – from conducting workshops and other exciting events to organizing one of the most reputed fests, we do it all. Our annual techno-management festival under the banner of ADASTRA has been a memorable tradition and huge success for the last 14 years. Our club has not failed to bring laurels and contribute to the college’s reputation with the various activities that we take up.",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("We at IEEE believe that in the ever-evolving world of today, networking is the key to knowledge sharing and progress. It gives us the perfect opportunity to gather information from experts in the international IEEE fraternity and allows us to be a part of something bigger than ourselves. We leave no stones unturned in our pursuit of technological advancement and aspire to empower everyone with eruditio",style: TextStyle(fontSize: 20),),
                  )
                ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber[100],
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Our Main Activities",style: TextStyle(fontSize: 30),),
                  ),
                   Bullets(text: "Focus on research and development.",),
                   Bullets(text: "Promote technical awareness amongst college students.",),
                   Bullets(text: "Imparts knowledge relating to social issues by actively volunteering at NSS unit in the college",),
                   Bullets(text: "Conducts activities which can develop the technical cognition of a student.",)
                ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 20,
                borderRadius: BorderRadius.circular(20),
                color:Colors.cyan[200],
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("19",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Executive Members",style: TextStyle(fontSize: 25),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("3",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Chapters",style: TextStyle(fontSize: 25),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("1",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Affinity Groups",style: TextStyle(fontSize: 25),),
                  )
                ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 30,
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Reach us at",style: TextStyle(fontSize: 30),),
                    ),
                    Socialmediacard(text: "Facebook",url:"https://www.facebook.com/IeeeSnist",imageurl:'assets/images/SocialMedia/facebook.png'),
                    Socialmediacard(text: "Instagram",url: "https://www.instagram.com/ieeesnist/",imageurl:'assets/images/SocialMedia/instagram.png'),
                    Socialmediacard(text: "Linkedin",url: "https://www.linkedin.com/groups/3684572/",imageurl:'assets/images/SocialMedia/linkedin.png'),
                    Socialmediacard(text: "Twitter",url: "https://twitter.com/Sreenidhi_SNIST",imageurl:'assets/images/SocialMedia/twitter.png')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Socialmediacard extends StatelessWidget {
String text;
String imageurl;
String url;
Socialmediacard({this.imageurl,this.text,this.url});
void launchurl(String urlgiven)async
{
 await canLaunch(urlgiven)? await launch(urlgiven):throw 'Could not launch $urlgiven';
}
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:()=>launchurl(url),
      child: ListTile(
        leading: Image.asset(imageurl,height: 40,),
        title: Text(text,style: TextStyle(fontSize: 25),),
      ),
    );
  }
}