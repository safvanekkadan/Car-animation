import 'package:flutter/material.dart';

class Screentitle extends StatelessWidget {
  final  String text;
  const Screentitle({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0,end: 1),
      duration:const  Duration(microseconds: 500),
      builder: (context,  double _value,  child) {
        return Opacity(
          opacity:_value,
          child: Padding(padding: EdgeInsets.only(top:  _value*20)),
          );
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
} 