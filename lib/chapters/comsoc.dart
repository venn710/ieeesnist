import 'package:flutter/material.dart';
import 'package:ieee/utils.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';
class COMSOC extends StatefulWidget {
  @override
  _COMSOCState createState() => _COMSOCState();
}

class _COMSOCState extends State<COMSOC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COMMUNICATIONS SOCIETY"),
        centerTitle: true,
      ),
    body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Text("Communications Society",textAlign: TextAlign.center,style: TextStyle(fontSize: 33),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Communications society was established in 1952. With the formation of IRE’s (the Institute of Radio Engineers) Professional Group on Communications Systems (PGCS), Communications Society under IEEE has evolved into a diversified group of global industry professionals with a common objective in advancing all communications technologies.',style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Communications Society (ComSoc) under IEEE – SNIST SB was, initiated in the year 2017. The main motto of establishing Communications Society under IEEE – SNIST SB was to make a developing engineer understand the seamless connection between Electronics and Communication. It also aims in improvisation of innovative thinking of a student regarding practical working and diverse applications in the practical world.',style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Communications Society under IEEE – SNIST SB, aims to prepare an engineer in all possible ways to make him/her field ready. In the previous years, Communications Society under IEEE – SNIST SB has organized few events that were not only knowledgeable but were also fruitful to the engineers of SNIST and to the students of many other colleges. With a good membership base of around 20 members, including the Executive Committee and the volunteers, ComSoc IEEE – SNIST SB, has made a profound impact on many engineers over the years with unique and innovative events.',style: TextStyle(fontSize: 20),),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                    CircleAvatar(
                      maxRadius: 100,
                      child: ColorFiltered(
                        colorFilter:ColorFilter.mode(Colors.blue[100],BlendMode.darken),
                        child: Image.asset('assets/images/Chapters/chap2.png',)))
                  )
                ],
              ),
            ),
          ),
          VisionsCard(
            visions: [
            'The IEEE Communications Society promotes technological innovation and fosters creation and sharing of information among the global technical community.'
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
                    child: Text('Opinions on ComSoc',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: YoutubePlayerIFrame(
                    controller: getcontroller('jvo1mRJv260'),
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
                child: Text("Get your Communications Society membership Right Away",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:()async
                {
                  const url="https://www.comsoc.org/membership/student-membership";
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

