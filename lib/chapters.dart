import 'package:flutter/material.dart';
class Chapters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CHAPTERS"),centerTitle: true,),
      body: ListView(
        children: [
          MyCard(enableca: true,imagepath:'assets/images/Chapters/chap0.png',scale: 1,text: "Wie Conferencia",),
          MyCard(enableca: true,imagepath:'assets/images/Chapters/chap1.png',scale: 1,text: "Computer Society",),
          MyCard(enableca: true,imagepath:'assets/images/Chapters/chap2.png',scale: 1,text: "Communications Society",),
          MyCard(enableca: true,imagepath:'assets/images/Chapters/chap3.png',scale: 1,text: "PES",),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final double scale;
  final String text;
  final String imagepath;
  final bool enableca;
  MyCard({this.imagepath,this.scale,this.text,this.enableca});
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
              child: (enableca)?CircleAvatar(
                maxRadius: 100,
                child: Image.asset(imagepath,scale:scale,alignment: Alignment.center,),backgroundColor: Colors.white,):Image.asset(imagepath,scale:scale,alignment: Alignment.center)
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