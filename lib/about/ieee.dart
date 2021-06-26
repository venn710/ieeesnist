import 'package:flutter/material.dart';
import 'package:ieee/utils.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
class IEEE extends StatefulWidget {
  @override
  _IEEEState createState() => _IEEEState();
}

class _IEEEState extends State<IEEE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IEEE"),
        centerTitle: true,
      ),
    body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Text("IEEE",textAlign: TextAlign.center,style: TextStyle(fontSize: 33),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('IEEE is the world’s largest technical professional organization dedicated to advancing technology for the benefit of humanity. IEEE inspires a global community to innovate for a better tomorrow through its highly-cited publications, conferences, technology standards, and professional and educational activities. IEEE is the trusted “voice” for engineering, computing and technology information around the globe.',style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('There are more than 420,000 members from more than 160 countries bearing the membership. IEEE publishes a third of the world’s technical literature in electrical engineering, computer science, and electronics. It is a leading developer of international standards that underpin many of today’s telecommunications, information technology, and power generation products and services.',style: TextStyle(fontSize: 20)),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                    CircleAvatar(
                      backgroundColor: Colors.blue[200],
                      maxRadius: 100,
                      child: ColorFiltered(
                        colorFilter:ColorFilter.mode(Colors.blue[200],BlendMode.darken),
                        child: Image.asset('assets/images/About/ieee.jpeg',)))
                  )
                ],
              ),
            ),
          ),
          VisionsCard(
            visions: [
              'IEEE’s core purpose is to foster technological innovation and excellence for the benefit of humanity.'
            ],
          ),
          MissionsCard(
            li: [
              'IEEE will be essential to the global technical community and to technical professionals everywhere, and be universally recognized for the contributions of technology and of technical professionals in improving global conditions.'
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
                    child: Text('Benefits of IEEE membership',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: YoutubePlayerIFrame(
                    controller: getcontroller('WBCt8MaNafw'),
                    aspectRatio: 16 / 9,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 20,
                borderRadius: BorderRadius.circular(20),
                color:Colors.cyan[200],
                child: Column(children: [
                  Infocard(name:"Members",number:'423000',),
                  Infocard(name:"Sections",number:'334',),
                  Infocard(name:"Chapters",number: "2116",),
                  Infocard(name: "Student Branches",number: "3005",),
                  Infocard(name:"Student Members",number:'117000',),
                  Infocard(name:"Affinity Groups",number:'486',),
                  Infocard(name:"Countries",number:'160+',),
                  Infocard(name:"SB Chapters",number:'1481',),
                  ],),
              ),
            )
          
          ],
      ),
    );
  }
}

