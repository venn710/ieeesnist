import 'package:flutter/material.dart';
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
          MyCard(enableca: false,imagepath: 'assets/images/Datacenter/graduation.png',scale: 4,text: "Alumni Association",),
          MyCard(enableca: false,imagepath: 'assets/images/Datacenter/filling-form.png',scale: 4,text: "Filling Forms",),
        ],
      ),
    );
  }
}