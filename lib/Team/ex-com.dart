import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class EXECCOMM extends StatefulWidget {
  @override
  _EXECCOMMState createState() => _EXECCOMMState();
}

class _EXECCOMMState extends State<EXECCOMM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Executive Committee"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Executive Committee 2020-2021',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 600,
              child: PhotoView(
              backgroundDecoration: BoxDecoration(
                color: Colors.white
              ),
              imageProvider: AssetImage("assets/images/ex-com.jpg"),
              ),
            ),
          )
        ],
        
      ),
    );
  }
}