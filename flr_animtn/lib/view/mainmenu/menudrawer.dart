import 'package:flr_animtn/constants/colors.dart';
import 'package:flr_animtn/view/home/homescreen.dart';
import 'package:flr_animtn/view/home/widgets/language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainMenuDrawer extends StatelessWidget {
  const MainMenuDrawer({super.key});

  @override
  Widget build(BuildContext context) => const ZoomDrawer(
    drawerShadowsBackgroundColor: cBlackColor,
    //menuScreenOverlayColor: cWhiteColor,
   mainScreenOverlayColor: cBlackColor45,
    //shadowLayer2Color: cBlackColor,
    shadowLayer1Color: cGreyColor,
    menuBackgroundColor: cGreyColor,
    style: DrawerStyle.defaultStyle,
    menuScreen: DropdownButtonWidget(),
    mainScreen: HomeScreen(),
  );
}