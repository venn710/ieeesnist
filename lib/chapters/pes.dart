import 'package:flutter/material.dart';
import 'package:ieee/utils.dart';
import '../events.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';
class PES extends StatefulWidget {
  @override
  _PESState createState() => _PESState();
}

class _PESState extends State<PES> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PES"),
        centerTitle: true,
      ),
    body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.green[200],
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Power and Energy Society",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('The Power & Energy Society (PES) provides the world’s largest Forum for sharing the latest in technological developments in the electric power industry, for developing standards that guide the development and construction of equipment and systems, for educating members of the industry and the general public. Members of the Power & Energy Society are leaders in this field, and their employers derive substantial benefits from involvement with this unique and outstanding association.',style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('LEARN, about current research and applications of recent technologies such as wind, photovoltaic’s, fuel cells, distributed generation, flexible AC transmission, energy storage, Smart Grids, and more',style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('STAY INFORMED, about the latest developments in traditional technologies and the new opportunities created as today’s technological and financial situations impact the power and energy industry.',style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('NETWORK, with experienced professionals in all aspects of the industry be that local, regional, or international meetings. Save big on conference registration fees, some are even free!',style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                    CircleAvatar(
                      maxRadius: 100,
                      child: ColorFiltered(
                        colorFilter:ColorFilter.mode(Colors.green[200], BlendMode.darken),
                        child: Image.asset('assets/images/Chapters/chap3.png',)))
                    // MyCard(enableca:false,imagepath: 'assets/images/Chapters/chap3.png',text: "PES",),
                  )
                ],
              ),
            ),
          ),
          VisionsCard(
            visions: [
              "To be the leading provider of scientific and engineering information on electric power and energy for the betterment of society, and the preferred professional development source for our members ~ Approved by the IEEE PES Governing Board, 17 July 2003 With over 24,000 members around the globe representing every facet of the electric power and energy industry, PES is at the forefront of the rapidly changing technological advancements that impact everyone’s future.",
              "The vision of PES Chapter IEEE – SNIST SB, is to motivate and encourage students to present papers at different technical conferences and participate in the events and competitions conducted by IEEE and contribute to the society by adopting local school and involvement in charitable events"
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
                    child: Text("Pro's of being a PES member",textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: YoutubePlayerIFrame(
                    controller: getcontroller('BrxdLNDxWOw'),
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
                child: Text("Get your PES membership now",style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:()async
                {
                  const url="https://www.ieee.org/membership-catalog/productdetail/showProductDetailPage.html?product=MEMPE031";
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