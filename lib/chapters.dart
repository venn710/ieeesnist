import 'package:flutter/material.dart';
class Chapters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Chaptercard(imagepath:'assets/images/chap0.png',scale: 1,text: "Wie Conferencia",),
          Chaptercard(imagepath:'assets/images/chap1.png',scale: 1,text: "Computer Society",),
          Chaptercard(imagepath:'assets/images/chap2.png',scale: 1,text: "Communications Society",),
          Chaptercard(imagepath:'assets/images/chap3.png',scale: 1,text: "PES",),
        ],
      ),
    );
  }
}

class Chaptercard extends StatelessWidget {
  final double scale;
  final String text;
  final String imagepath;
  Chaptercard({this.imagepath,this.scale,this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        color: Colors.teal[100],
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                maxRadius: 100,
                child: Image.asset(imagepath,scale:scale,),backgroundColor: Colors.white,),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text,style: TextStyle(fontSize: 30),),
              )
          ],
        ),
      ),
    );
  }
}