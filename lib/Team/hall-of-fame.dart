import 'package:flutter/material.dart';
class HALLOFFAME extends StatefulWidget {
  @override
  _HALLOFFAMEState createState() => _HALLOFFAMEState();
}

class _HALLOFFAMEState extends State<HALLOFFAME> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HALL OF FAME"),
        centerTitle: true,
      ),
      body:ListView(
          children: [
          FameWidget(chair:"Srujana Kowtha",generalsec: "Shreyas Cheemala",vicechair:"Rishi Bellamkonda", imagepath1:'assets/images/hall-of-fame/chair(19-20).jpg',imagepath2: 'assets/images/hall-of-fame/vicechair(19-20).jpg',imagepath3: 'assets/images/hall-of-fame/generalsec(19-20).jpg',year: '2019-20',),
          FameWidget(chair:"Gaurav Daula",generalsec: "Sai Kranthi",vicechair:"Shreyas Cheemala",imagepath1:'assets/images/hall-of-fame/chair(18-19).jpg',imagepath2: 'assets/images/hall-of-fame/vicechair(18-19).jpg',imagepath3: 'assets/images/hall-of-fame/generalsec(18-19).jpg',year: '2018-19',),
          FameWidget(chair:"Vishnu Varma",generalsec: "Bhargav Sai",vicechair:"Gaurav Daula",imagepath1:'assets/images/hall-of-fame/chair(17-18).jpg',imagepath2: 'assets/images/hall-of-fame/vicechair(17-18).jpg',imagepath3: 'assets/images/hall-of-fame/generalsec(17-18).jpg',year: '2017-18',),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("FOUNDER AND BRANCH COUNSELLOR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
                Image.asset('assets/images/hall-of-fame/founder.jpg'),
                Text("Dr. K. Sumanth",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                Text("BRANCH COUNSELLOR, IEEE SNIST",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FameWidget extends StatelessWidget {
  String imagepath1;
  String imagepath2;
  String imagepath3;
  String chair;
  String vicechair;
  String generalsec;
  String year;
  FameWidget({this.year,this.imagepath1,this.imagepath2,this.imagepath3,this.chair,this.generalsec,this.vicechair});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("IEEE - SNIST SB $year",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30.0),
            child: Column(
              children: [
                Image.asset(imagepath1,height:250,),
                Text(chair,style: TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
                Text("CHAIR-PERSON",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset(imagepath2,fit: BoxFit.cover,height: 200,),
                      Text(vicechair,style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      Text("VICE CHAIR-PERSON",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset(imagepath3,fit: BoxFit.cover,height: 200,),
                      Text(generalsec,style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      Text("GENERAL SECRETARY",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}