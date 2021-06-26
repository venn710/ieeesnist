import 'package:flutter/material.dart';
class IEEER10 extends StatefulWidget {
  @override
  _IEEER10State createState() => _IEEER10State();
}

class _IEEER10State extends State<IEEER10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IEEE-R10"),
        centerTitle: true,
      ),
    body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Text("IEEE R10",textAlign: TextAlign.center,style: TextStyle(fontSize: 33),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('The IEEE Region 10, also referred as the Asia Pacific Region, comprises of 57 Sections, 6 Councils, 17 Sub-sections, 515 Chapters, 60 Affinity Groups, and 958 Student Branches. It covers a geographical area stretching from South Korea and Japan in the north – east to New Zealand in the south, and Pakistan in the west. With a membership of 107,154, it is one of the largest regions in IEEE. For more info, visit the website.',style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('The primary objective of the R10 InfoMap is to provide IEEE members, leaders and volunteers with an interactive platform to find, reach and connect with each other over a visual medium. Additionally, the map provides users with an illustration of where each major meet – up or project in the Region is taking place thereby, enabling members to gain a summarized understanding of the opportunities/events available at their disposal throughout the year.',style: TextStyle(fontSize: 20)),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('With its members in 165 countries around the globe, the Region 10 Congress gathers members of the Asia-Pacific Region together every two years to network, learn about the latest IEEE programs, and share strategies for enhancing membership. This is the biggest IEEE event for the students, Young Professionals and Women in Engineering (WiE) in the region with ample opportunities to explore ideas, develop skills and discuss issues in their profession. The Region 10 Congress was first held in 2002 in Singapore, attracting 57 delegates. The event has since been held in places like Hong Kong (2004), Beijing (2005), Chennai (2007), Singapore (2009), New Zealand (2011), Hyderabad (2013), Sri Lanka (2015).',style: TextStyle(fontSize: 20)),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                    CircleAvatar(
                      backgroundColor: Colors.blue[200],
                      maxRadius: 100,
                      child: ColorFiltered(
                        colorFilter:ColorFilter.mode(Colors.blue[200],BlendMode.darken),
                        child: Image.asset('assets/images/About/ieeeregion.png',)))
                  )
                ],
              ),
            ),
          ),
          ],
      ),
    );
  }
}

