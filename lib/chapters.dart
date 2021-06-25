import 'package:flutter/material.dart';
class Chapters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CircleAvatar(
          maxRadius: 100,
          child: Image.asset('assets/images/chap0.png'),),
        CircleAvatar(
          maxRadius: 100,
          child: Image.asset('assets/images/chap1.png'),),
        CircleAvatar(
          maxRadius: 100,
          child: Image.asset('assets/images/chap2.png'),),
        CircleAvatar(
          maxRadius: 100,
          child: Image.asset('assets/images/chap3.png'),),
      ],
    );
  }
}