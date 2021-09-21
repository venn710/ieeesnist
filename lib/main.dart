import 'dart:ui';
import 'package:ieee/Studentservices.dart';
import 'package:ieee/about.dart';
import 'package:ieee/chapters.dart';
import 'package:ieee/chapters/Wie.dart';
import 'package:ieee/chapters/computersociety.dart';
import 'package:ieee/chapters/comsoc.dart';
import 'package:ieee/chapters/pes.dart';
import 'package:ieee/datacenter.dart';
import 'package:ieee/events.dart';
import 'package:ieee/knowmore.dart';
import 'package:ieee/team.dart';
import 'package:ieee/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:new ThemeData(
          primarySwatch:Colors.grey
      ),
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

class _MyHomePageState extends State<MyHomePage>with SingleTickerProviderStateMixin{
List<String>li=['man.png','man.png'];
AnimationController _controller;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(seconds: 2));
    _controller.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20))
            ),
            width:MediaQuery.of(context).size.width/1.4,
            child: Mydrawer()),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("IEEE-SNIST",style: TextStyle(color: Colors.white),),
        // backgroundColor: Colors.black.withOpacity(0.75)
      ),
      body:ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/IEEE SNIST.png',height:MediaQuery.of(context).size.height/5,fit: BoxFit.fill,),
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
          crossAxisAlignment:CrossAxisAlignment.stretch,
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
        height: 250,
        decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(40)),
                    image: DecorationImage(
                      image: AssetImage('assets/images/chairpic.jpg'),fit: BoxFit.fill),
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
         ChapterCard(imagepath: 'assets/images/Chapters/chap0.png',scale: 1,widget:WIE(),),
         ChapterCard(imagepath: 'assets/images/Chapters/chap1.png',scale: 3,widget:CS(),),                      
                  ],
        ),
        Row(
        children: [
         ChapterCard(imagepath: 'assets/images/Chapters/chap2.png',scale: 1,widget:COMSOC(),),                      
         ChapterCard(imagepath: 'assets/images/Chapters/chap3.png',scale: 1,widget:PES(),),                    ],
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
      ),
  ),
),
MissionsCard(
  li: [
"To make the students aware of new technological strides.",
"To organize events for students to bring out unique research ideas.",
"To bring about an increase in the membership count, so that more students can exercise the benefits of being an IEEE member.",
"To ignite interest in students to produce new papers and projects.",
"To make our fellow tech enthusiasts acquainted with various useful technologies by conducting unique workshops."
  ],
),
VisionsCard(
  visions: [
    "To facilitate and catalyze true learning by institutionalizing research, development, and dissemination of relevant technological knowledge through our ever-growing platform.",
    "We strive to continue being dedicated to promoting the interest of students by providing technical expertise and by showcasing their true potential.",
    "We shall work towards becoming an institution that not only fosters engineering excellence but social consciousness too."
  ],
),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Material(
    color: Colors.deepOrange[200],
    elevation: 10,
    borderRadius: BorderRadius.circular(20),
    child: TextButton(
      onPressed: ()
    {
      // showDialog(context: context, builder: (context)
      // {
      //   return AlertDialog(content: Text("HIIIIIIIIIII"),); 
      // });
      // _controller.forward();
      showModalBottomSheet(
        isScrollControlled: true,
        // backgroundColor: Colors.red,
        // elevation:0,
        shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
  ),
        enableDrag: true,
        isDismissible: true,
        context: context, builder:(context)
      {
        return Padding(
          padding:MediaQuery.of(context).viewInsets,
          child: Container(
            decoration: BoxDecoration(
              color:Color.fromRGBO(220,251,220,1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
            ),
            height: MediaQuery.of(context).size.height/2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/fingif.gif',scale: 5,),
                ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0,top:8,bottom: 8),
              child: TextField(
              style: TextStyle(color:Colors.black),
              onChanged: (value) {
                // mail=value;

                // //Do something with the user input.
              },
              decoration: InputDecoration(
                labelText: "Email",
                hintText: 'Enter your mail',
                hintStyle: TextStyle(color:Colors.black,),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
          ),
            ),
            ElevatedButton(onPressed: (){}, child: Text("SUBSCRIBE")) 
              ],
            ),
          ),
        );
      });
    }, child: Text("Click Me to Subscribe for Updates",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
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
class ChapterCard extends StatelessWidget {
  Widget widget;
  String imagepath;
  double scale;
  ChapterCard({
  this.imagepath,this.scale,this.widget
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        maxRadius: 100,
        child: GestureDetector(
          onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)
          {
            return widget;
          })),
          child: Image.asset(imagepath,scale:scale,))),
    ));
  }
}
class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child:TextButton(
                  onPressed: ()=>Navigator.pop(context),
                  child: ListTile(
                  leading: Image.asset('assets/images/Drawer/home.png',),
                  title: Text("HOME",textAlign: TextAlign.left,style: TextStyle(fontSize: 25),),
              ),
                )),
              Expanded(
                flex:6,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset('assets/images/About/ieee.jpeg',),
                )),
              DrawerCard(imagepath: 'assets/images/Drawer/info.png',widget: About(),text: "About",),
              DrawerCard(imagepath: 'assets/images/Drawer/teamwork.png',widget: Team(),text: "Team",),
              DrawerCard(imagepath: 'assets/images/Drawer/event.png',widget: Events(),text: "Events",),
              DrawerCard(imagepath: 'assets/images/Drawer/data-center.png',widget: Datacenter(),text: "Data Center",),
              DrawerCard(imagepath: 'assets/images/Drawer/student.png',widget: Studentservices(),text: "Student Services",),
              DrawerCard(imagepath: 'assets/images/Drawer/chapter.png',widget: Chapters(),text: "Chapters",)
            ],
          ),
        // ),
    ),
      );
  }
}

class DrawerCard extends StatelessWidget {
  Widget widget;
  String imagepath;
  String text;
  DrawerCard({this.imagepath,this.text,this.widget});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: TextButton(
        onPressed:()=>Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return widget;
        })),
        child: ListTile(
          leading:Image.asset(imagepath),
          title: Text(text,style: TextStyle(fontSize: 25)))),
    );
  }
}