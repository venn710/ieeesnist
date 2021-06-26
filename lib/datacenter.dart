import 'package:flutter/material.dart';
import 'package:ieee/datacenter/fillingforms.dart';
import 'package:url_launcher/url_launcher.dart';
import './chapters.dart';
class Datacenter extends StatefulWidget {
    @override
  _DatacenterState createState() => _DatacenterState();
}

class _DatacenterState extends State<Datacenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DATA CENTER"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          MyCard(enableca: false,imagepath: 'assets/images/Datacenter/active.png',scale: 4,text: "Active Members",),
          MyCard(enableca: false,imagepath: 'assets/images/Datacenter/report.png',scale: 4,text: "Reports",),
          GestureDetector(
            onTap: ()async
            {
              const url="https://docs.google.com/spreadsheets/d/1GSFUIOhsZF9nAeLH9ef4kd3J-cAwZSL7KsxYCUchews/edit#gid=1807753270";
              await canLaunch(url)? await launch(url):throw 'Could not launch $url';              
            },
            child: MyCard(enableca: false,imagepath: 'assets/images/Datacenter/graduation.png',scale: 4,text: "Alumni Association",)),
          GestureDetector(
            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>Forms())),
            child: MyCard(enableca: false,imagepath: 'assets/images/Datacenter/filling-form.png',scale: 4,text: "Filling Forms",)),
        ],
      ),
    );
  }
}