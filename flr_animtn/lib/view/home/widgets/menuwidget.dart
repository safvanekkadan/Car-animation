import 'package:flr_animtn/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: ()=>ZoomDrawer.of(context)!.toggle(),
     icon: const Icon(Icons.turn_slight_left_outlined,
     color: cWhiteColor,));
  }
}