import 'dart:ui';
import 'package:ieee/events.dart';
import 'package:ieee/knowmore.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IEEE',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  AnimationController animationController;
@override
void initState()
{
  super.initState();
  animationController=AnimationController(vsync: this,duration: Duration(seconds:1));
}
void toggle()
{
  animationController.isDismissed?animationController.forward():animationController.reverse();
}
 @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context,_)
          {
          return Stack(
          children: [
            Mylist(toggle:toggle),
               Transform.translate(
                offset: Offset(225*(animationController.value-1),0),
                child: Transform(transform:Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(pi/2*(animationController.value-1)),
                alignment: Alignment.centerLeft,
                child:Mydrawer(toggle: toggle,)
                )
                ),
          ],
        );  
  },
    );
  }
}

class Bullets extends StatelessWidget {
final String text;
Bullets({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset('assets/images/bullet.png',height: 30,),
        title: Text(text,style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
class Mydrawer extends StatelessWidget {
  Function toggle;
  Mydrawer({this.toggle});
  @override
  Widget build(BuildContext context) {
    return 
    // Scaffold(
    //   appBar: AppBar(
    //     leading: GestureDetector(
    //       onTap: toggle,
    //       child:Icon(Icons.ac_unit_outlined),
    //     ),
    //   ),
    //   body: 
      SafeArea(
        child: Container(
          color: Colors.red,
          width: 200,
          child: Column(
            children: [
             GestureDetector(
            onTap: toggle,
            child:Icon(Icons.ac_unit_outlined),
          ),
              TextButton(
                onPressed: null,
                child: Text("About")),
              TextButton(
                onPressed: null,
                child: Text("Team")),
              TextButton(
                onPressed: null,
                child: Text("Events")),
              TextButton(
                onPressed: null,
                child: Text("Data Center")),
              TextButton(
                onPressed: null,
                child: Text("Student Services")),
              TextButton(
                onPressed: null,
                child: Text("Chapters"))
            ],
          ),
        // ),
    ),
      );
  }
}
class Mylist extends StatelessWidget {
  Function toggle;
  Mylist({this.toggle});
  List<String>li=['man.png','man.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: toggle,
          child: Icon(Icons.dehaze_sharp)),
      ),
      body:ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/IEEE SNIST.png',height:150,fit: BoxFit.fill,),
                      ),
                      Center(
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: 
                        [
                          ColorizeAnimatedText('IEEE-SNIST', textStyle: TextStyle(fontSize: 50), colors:[Colors.red,Colors.blue]),
                        ]),
                      ),
                      Center(
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: 
                        [
                          ColorizeAnimatedText('STUDENTS', textStyle: TextStyle(fontSize: 50), colors:[Colors.red,Colors.blue]),
                        ]),
                      ),
                      Center(child: ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)
                      {
                        return Knowmore(); 
                      })), child: Text("Know More"))),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: AnimatedTextKit(
  animatedTexts: [
      TypewriterAnimatedText(
                  'MESSAGE FROM THE CHAIR-PERSON' ,
                  textStyle: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                  
                  speed: const Duration(milliseconds: 200),
      ),
  ],
  repeatForever: true,
),
                      ),
// SizedBox(height: 20,),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:Material(
      borderRadius:BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.elliptical(10, 10),
                  bottomLeft: Radius.elliptical(10, 10),
                  bottomRight:Radius.circular(40)
      ),
      elevation:20,
      shadowColor: Colors.blue[900],
      color: Colors.blue[100],
      child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text.rich(TextSpan(
                        children:const <TextSpan>[
                          TextSpan(
                            style: TextStyle(fontSize: 20,color: Colors.black87),
                            text:"DEAR IEEEIANS,"),
                            TextSpan(
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                              text: "\n               It is my great pleasure to serve as the Chairperson for IEEE SNIST for the term 2020-21.\n\nIEEE SNIST is the most unique and prestigious club in Sreenidhi institute of science and technology. It is a community, uniting students from all over the city by organizing world class events. IEEE SNIST is aimed at finding a new set of student leaders who will contribute immensely, both to IEEE and its stated objective of technological advancements in the years to come, it is also a platform where one could learn from one another and utilize it for exposure to new ideas, practices, discourse and relationships.\n\nThe flagship events by IEEE SNIST are the main pillars of our success. First being ADASTRA which is a three day National level technical fest which has built up it's standards year by year with some quality events such as The Paper Presentation, The Adastra Summit, Various Workshops and other Technical Events. The second flagship event is WIE Conferencia which is a three day National level conferencia organized under the WIE affinity group. WIE Conferencia is one of the best conferences in Hyderabad which simulates some quality debate to bring up ideas to solve the problems being faced by women both at national and international level. Both the events uplift the prestige and pride of IEEE SNIST with their success every year.\n\nOn behalf of the Executive Committee, I invite each and every student of the college to be a part of IEEE SNIST to have one of the finest experiences both in terms of organizing and gaining knowledge."
                            ),
                            TextSpan(
                              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                              text: "\n\nYours,\nRishi Bellamkonda,\nChairperson, IEEE SNIST,\n2020-21"
                            )
                        ])),
                    ),
                    Padding(
  padding: const EdgeInsets.all(8.0),
  child:Container(
      height: 200,
      decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(40)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/chairpic.jpg'))
      ),),
),
                  ],
      ),
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Material(
      elevation: 30,
      borderRadius: BorderRadius.circular(20),
      color: Colors.teal[200],
      child: Column(
  children: [
      Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("Affinity Groups And Society Chapters",style: TextStyle(fontSize: 30),textAlign: TextAlign.center,)),
      ),
      Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        maxRadius: 100,
                        child: Image.asset('assets/images/chap0.png')),
                    )),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        maxRadius:100,
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/chap1.png',scale: 3,)),
                    )),
                  ],
      ),
      Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        maxRadius: 100,
                        child: Image.asset('assets/images/chap2.png')),
                    )),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        maxRadius: 100,
                        child: Image.asset('assets/images/chap3.png')),
                    )),
                  ],
      )
  ],
  ),
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:GestureDetector(
    onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)
    {
      return Events();
    })),
    child: Material(
        color: Colors.cyan[50],
        borderRadius: BorderRadius.circular(40),
        elevation: 40,
        child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("EVENTS",style: TextStyle(fontSize: 30),)),
                      ),
                      Image.asset('assets/images/events.png')
                    ]
        ),
        // height: 200,
        // decoration: BoxDecoration(
        //   image:DecorationImage(image: AssetImage('assets/images/events.png'))
        // ),
    ),
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Material(
      color: Colors.red[100],
      elevation: 20,
      borderRadius: BorderRadius.circular(20),
      child: Column(
                  children: [
                    Image.asset('assets/images/target.png',scale: 5,),
                    Material(
                      color: Colors.red[50],
                      elevation: 20,
                      borderRadius: BorderRadius.circular(20),
                      child: Column(children: [
                      Text("MISSION",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      Bullets(text:"To make the students aware of new technological strides."),
                      Bullets(text:"To organize events for students to bring out unique research ideas."),
                      Bullets(text:"To bring about an increase in the membership count, so that more students can exercise the benefits of being an IEEE member.",),
                      Bullets(text:"To ignite interest in students to produce new papers and projects.",),
                      Bullets(text: "To make our fellow tech enthusiasts acquainted with various useful technologies by conducting unique workshops.",)
                    ],))
                  ],
                  ),
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Material(
      color: Colors.green[100],
      elevation: 20,
      borderRadius: BorderRadius.circular(20),
      child: Column(
                  children: [
                    Image.asset('assets/images/vision.png',scale: 5,),
                    Material(
                      color: Colors.green[50],
                      elevation: 20,
                      borderRadius: BorderRadius.circular(20),
                      child: Column(
                        children: [
                          Text("VISION",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          Bullets(text:"To facilitate and catalyze true learning by institutionalizing research, development, and dissemination of relevant technological knowledge through our ever-growing platform."),
                          Bullets(text: "We strive to continue being dedicated to promoting the interest of students by providing technical expertise and by showcasing their true potential.",),
                          Bullets(text: "We shall work towards becoming an institution that not only fosters engineering excellence but social consciousness too.",)
                        ],
                      )
                    )
                  ],
      ),
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Material(
      color: Colors.brown[100],
      borderRadius: BorderRadius.circular(20),
      elevation: 30,
      child: Column(
                  children: [
                    Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Want to become a member of IEEE?",style: TextStyle(fontSize: 20),),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(child: Text("JOIN TODAY!",style: TextStyle(fontSize: 20),),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Get your IEEE membership now',style: TextStyle(fontSize: 20),),
                    ),
                    ElevatedButton(
                      onPressed: ()async
                      {
                        const url="https://www.ieee.org/membership/join/index.html?WT.mc_id=hc_join";
                        await canLaunch(url)? await launch(url):throw 'Could not launch $url';
                      },
                      child: Text("Sign Up",style: TextStyle(fontSize: 20),))
                  ],
      ),
  )
),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: CarouselSlider(
                            items: li.map((e) {
                              return Container(
                                width: double.infinity,
                              child: Material(
                                elevation: 20,
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(20),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: CircleAvatar(
                                        maxRadius: 40,
                                        child: Image.asset('assets/images/$e'),),
                                    ),
                                    Text("Person 1"),
                                    Text("Few lines from Member")
                                  ],
                                ),
                              ),
                              );
                            }).toList(),
                            options: CarouselOptions(
                            height: 180.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration: Duration(milliseconds:800),
                            viewportFraction: 0.9,
                          ),
                    ),
                        ),
                    ],
                  ),
    );
  }
}