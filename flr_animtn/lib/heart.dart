import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _colorAnimation;
  @override
  void initState(){
    super.initState();

    _controller =AnimationController(vsync: this,
    duration: Duration(milliseconds: 300),
    );
    _colorAnimation =ColorTween(begin:Colors.grey[400],end: Colors.red )
    .animate(_controller);
    _controller.forward();

    _controller.addListener(() {
      print(_controller.value);
      print(_colorAnimation);
    });
  }
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: Colors.grey[400],
        size: 30,
      ),
      onPressed: () {},
    );
  }
}