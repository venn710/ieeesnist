import 'package:flutter/material.dart';
import 'package:ieee/utils.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';
class WIE extends StatefulWidget {
  @override
  _WIEState createState() => _WIEState();
}

class _WIEState extends State<WIE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WIE"),
        centerTitle: true,
      ),
    body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.purple[100],
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Text("Women In Engineering - Affinity Group",textAlign: TextAlign.center,style: TextStyle(fontSize: 33),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('IEEE Women in Engineering (WiE) is one of the largest international professional organizations dedicated to promoting women engineers, scientists, and inspiring girls around the world to follow their academic interests in a career in engineering.',style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('The mission of IEEE WIE is to facilitate the global recruitment, retention and recognition of women in technical disciplines. IEEE WIE envisions a vibrant community of IEEE women and men collectively using their diverse talents to innovate for the benefit of humanity',style: TextStyle(fontSize: 20)),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                    CircleAvatar(
                      maxRadius: 100,
                      child: ColorFiltered(
                        colorFilter:ColorFilter.mode(Colors.purple[100],BlendMode.darken),
                        child: Image.asset('assets/images/Chapters/chap0.png',)))
                  )
                ],
              ),
            ),
          ),
          VisionsCard(
            visions: [
              'WiE – AG, IEEE – SNIST SB, envisions a vibrant community of women innovators for the world of tomorrow.',
              ' It not only promotes women but also supports them in their academic and professional careers.',
              'It is associated with worldwide, multidisciplinary community of engineers, scientists and educators.',
              ' It throws light on how women are making a lasting impact on the field of Engineering.',
              'The student branch was addressed by Madhavi Latha (WIE chair 2009) and Dr.Shailaja from IICT and Dr. Kanaka Durga (2010).',
              'Speakers shared their view on the role of woman as an engineer with the student branch members and motivated them on the same'
            ],
          ),
          MissionsCard(
            li: [
              'Our goal is to facilitate the recruitment and retention of women in technical disciplines globally. We envision a vibrant community of IEEE women and men collectively using their diverse talents to innovate for the benefit of humanity.',
              'Recognize the outstanding achievements of women in electrical and electronics engineering through IEEE Awards nominations.',
              'Organize receptions at major technical conferences to enhance networking and to promote membership in WiE.',
              'Advocate for women in leadership roles in IEEE governance, and career advancement for women in the profession. Provide assistance with the formation of new WiE Affinity Groups, and support ongoing activities.'
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
                    child: Text("Why IEEE-WIE membership?",textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: YoutubePlayerIFrame(
                    controller: getcontroller('pDAaVRkIJTE'),
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
                child: Text("Get your Women In Engineering - AG membership Right Away",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:()async
                {
                  const url="https://www.ieee.org/membership-catalog/productdetail/showProductDetailPage.html?product=MEMWIE050";
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

