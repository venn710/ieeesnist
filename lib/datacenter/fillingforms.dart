import 'package:ieee/chapters.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FORMS"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: ()async{
              const url="https://docs.google.com/forms/d/e/1FAIpQLSfRBWFmCOJGJ_RETC6NmQ2A8QtugvzoqYf6sc_DW9bmn2yzDg/viewform";
              await canLaunch(url)? await launch(url):throw 'Could not launch $url';
            },
            child: MyCard(enableca: false,scale: 4,text: "MEMBERSHIP",imagepath: 'assets/images/Datacenter/membership.png',)),
          GestureDetector(
            onTap: ()async{
            const url="https://docs.google.com/forms/d/e/1FAIpQLSfhBqbFbbSinfPQYTHK4SdeBHWtzeJhIJ5u8KQT8T2PNcIbyQ/viewform";
            await canLaunch(url)? await launch(url):throw 'Could not launch $url';
            },
            child: MyCard(enableca: false,scale: 4,text: "FEEDBACK",imagepath: 'assets/images/Datacenter/feedback.png')),
          GestureDetector(
            onTap: ()async{
            const url="https://docs.google.com/forms/d/e/1FAIpQLSepqfbEl5WQVmp2rhN3nUUAG4IpVmDfg3u0X-foZppQgkiQ4Q/viewform?pli=1";
            await canLaunch(url)? await launch(url):throw 'Could not launch $url';
            },  
            child: MyCard(enableca: false,scale: 4,text: "REIMBURSEMENT",imagepath: 'assets/images/Datacenter/refund.png')),
          GestureDetector(
            child: MyCard(enableca: false,scale: 4,text: "COMPLAINTS",imagepath: 'assets/images/Datacenter/customer-review.png')),
          GestureDetector(
            onTap: ()async{
            const url="https://docs.google.com/forms/d/e/1FAIpQLSe8JunkZtEuurbdiOoe5JgzGZfgLvisCGJfXx4KnldiEqB2hQ/viewform";
            await canLaunch(url)? await launch(url):throw 'Could not launch $url';
            },     
            child: MyCard(enableca: false,scale: 4,text: "RESIGNATION",imagepath: 'assets/images/Datacenter/resigned.png')),
          GestureDetector( 
            child: MyCard(enableca: false,scale: 4,text: "AUDIT REQUEST",imagepath: 'assets/images/Datacenter/audit.png')),
        ],
      ),
    );
  }
}