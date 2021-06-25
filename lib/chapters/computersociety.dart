import 'package:flutter/material.dart';
import 'package:ieee/utils.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';
class CS extends StatefulWidget {
  @override
  _CSState createState() => _CSState();
}

class _CSState extends State<CS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COMPUTER SOCIETY"),
        centerTitle: true,
      ),
    body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.yellow[100],
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Text("Computer Society",textAlign: TextAlign.center,style: TextStyle(fontSize: 33),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Computer Society is a leading provider of technical information, community services, and personalized services to the world’s computing professionals.',style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('The IEEE Computer Society is the world’s leading membership organization dedicated to computer science and technology. Serving more than 60,000 members, the IEEE Computer Society is the trusted information, networking, and career – development source for a global community of technology leaders that includes researchers, educators, software engineers, IT professionals, employers, and students. With nearly 20 student members and 2 professional members, IEEE – SNIST SB, has filed a petition to initiate the computer society student chapter. The acknowledgement has been received from the computer society head quarters.',style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('The motive to initiate the computer society is to make the computer science and Information technology students to make computing as their profession. New Innovative ideas are being implemented to make students and professionals get a fruitful result.',style: TextStyle(fontSize:20),),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                    CircleAvatar(
                      maxRadius: 100,
                      backgroundColor: Colors.yellow[100],
                      child: ColorFiltered(
                        colorFilter:ColorFilter.mode(Colors.yellow[100],BlendMode.darken),
                        child: Image.asset('assets/images/Chapters/chap1.png',)))
                  )
                ],
              ),
            ),
          ),
          VisionsCard(
            visions: [
              'To be the leading provider of technical information, community services, and personalized services to the world’s computing professionals.'
            ],
          ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Pro's of being an IEEE CS member",textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: YoutubePlayerIFrame(
                    controller: getcontroller('XLLH-BOhBvw'),
                    aspectRatio: 16 / 9,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Material(
            borderRadius: BorderRadius.circular(20),
            color: Colors.brown[200],
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Get your IEEE CS membership now",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:()async
                {
                  const url="https://www.ieee.org/membership-catalog/productdetail/showProductDetailPage.html?product=MEMC016";
                  await canLaunch(url)? await launch(url):throw 'Could not launch $url';
                } , child: Text("Sign Up")),
              )
            ],),
          )
        ],
      ),
    );
  }
}

