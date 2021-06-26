import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';
class MissionsCard extends StatelessWidget {
  final List<String> li;
  MissionsCard({this.li});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
          color: Colors.red[100],
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          child: Column(
                      children: [
                        Image.asset('assets/images/target.png',scale: 5,),
                        Text("MISSION",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        Material(
                          color: Colors.red[50],
                          elevation: 20,
                          borderRadius: BorderRadius.circular(20),
                          child: Column(children: li.map((e) =>
                          Points(text: e,)
                          ).toList(),))
                      ],
                      ),
  ),
    );
  }
}
class VisionsCard extends StatelessWidget {
  List<String>visions;
  VisionsCard({this.visions});
    @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
          color: Colors.green[100],
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          child: Column(
                      children: [
                        Image.asset('assets/images/vision.png',scale: 5,),
                        Text("VISION",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        Material(
                          color: Colors.green[50],
                          elevation: 20,
                          borderRadius: BorderRadius.circular(20),
                          child: Column(children:visions.map((e) =>
                          Points(text: e,)
                          ).toList(),))
                      ],
                      ),
  ),
    );
  }
}
class Points extends StatelessWidget {
  String text;
  Points({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: ListTile(
        leading: Image.asset('assets/images/right.png',height: 30,),
        title: Text(text,style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
YoutubePlayerController getcontroller(String id)
{
YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId:id,
    params: YoutubePlayerParams(
        autoPlay: false,
        showControls: true,
        showFullscreenButton: true,
    ),
);
return _controller;
}
class SignupCard extends StatelessWidget {
  String text;
  String link;
  SignupCard({this.link,this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: Colors.brown[200],
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text,textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed:()async
          {
            var url=link;
            await canLaunch(url)? await launch(url):throw 'Could not launch $url';
          } , child: Text("Sign Up")),
        )
      ],),
    );
  }
}
class Infocard extends StatelessWidget {
  String name;
  String number;
  Infocard({this.name,this.number});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(number,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
        ),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name,style: TextStyle(fontSize:25,fontWeight: FontWeight.w400),),
        ),
      ],
    );
  }
}