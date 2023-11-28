import 'package:flr_animtn/constants/colors.dart';
import 'package:flutter/material.dart';


class ThumbIconProvider extends ChangeNotifier {
  Color iconColor = cGreyColor;
  double targetvalue = 30;

  void changeIconColor() {
    if (iconColor == cGreyColor) {
      iconColor = cBluenColor;
      targetvalue = 40;
    } else {
      iconColor = cGreyColor;
      targetvalue = 30;
    }
    notifyListeners();
  } 
}
