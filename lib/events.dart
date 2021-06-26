import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ieee/utils.dart';
class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  List adastra=['adastra0.jpg','adastra1.jpg','adastra2.jpg','adastra3.jpg','adastra4.jpg','adastra5.jpg'];
  List wie=['wie0.jpg','wie1.jpg','wie2.jpg','wie3.jpg','wie4.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EVENTS"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(40),
              color: Colors.red,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("ADASTRA 2K20",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: CarouselSlider(
                            items: adastra.map((e) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 5,
                                  // color: Colors.red,
                                  child: Container( 
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image:DecorationImage(image: AssetImage(
                                        'assets/images/Adastra/$e'),
                                        fit: BoxFit.fill) 
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                            options: CarouselOptions(
                            height: 250.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration: Duration(milliseconds:800),
                            viewportFraction: 0.9,
                          ),
                    )
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(40),
              color: Colors.pink[100],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("WIE CONFERENCIA 3.0",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ),
                          Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: CarouselSlider(
                            items: wie.map((e) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 5,
                                  // color: Colors.red,
                                  child: Container( 
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image:DecorationImage(image: AssetImage(
                                        'assets/images/Wie/$e'),
                                        fit: BoxFit.fill) 
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                            options: CarouselOptions(
                            height: 250.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration: Duration(milliseconds:800),
                            viewportFraction: 0.9,
                          ),
                    )
                    ),
                ],
              ),

            ),
          ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                child: Column(
                children: [
                 Padding(
                   padding: const EdgeInsets.all(4.0),
                   child: Text("Other Events Under IEEE-SNIST",textAlign: TextAlign.center),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("In the Past Two Years",textAlign: TextAlign.center),
                 ),
                 Points(text:"Business Plan and Startup Pitch"),
                 Points(text:"Ethical Hacking workshop"),
                 Points(text: "Graphic Designing workshop using Adobe Photoshop"),
                 Points(text: "Membership Recruitment Drive"),
                 Points(text: "Mock Interview Simulator"),
                 Points(text: "Inter branch Technical Quiz")
                  ],
                  ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("EVENTS UNDER COMPUTER SOCIETY",textAlign: TextAlign.center),
                      ),
                      Points(text:"Web Development sessions using HTML and CSS"),
                      Points(text:"Workshop on Artificial intelligence and Machine learning",),
                      Points(text: "Search Engine Optimization Session"),
                      Points(text: "Python Programming Weekly Sessions",),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("EVENTS UNDER POWER AND ENERGY SOCIETY",textAlign: TextAlign.center),
                      ),
                      Points(text: "Sessions on Inverters and Rectifiers using MATLAB and SIMULINK",),
                      Points(text:"Guest Lecture on Safety Measures while handling electrical machines",),
                      Points(text:"Workshop on how to make your own power bank",)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("EVENTS UNDER WOMEN IN ENGINEERING AFFINITY GROUP",textAlign: TextAlign.center,),
                      ),
                      Points(text: "WIE Star Program",),
                      Points(text: "WIE Debate",),
                      Points(text: "WIE Donation Drive",)
                    ],
                  ),
                ),
              )

        ],
      ),
      
    );
  }
}