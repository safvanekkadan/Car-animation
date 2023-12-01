import 'package:flr_animtn/controller/like_icon_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LOL extends StatelessWidget {
  const LOL({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LikeIconProvider>(
      builder: (context, iconProvider, child) {
        return TweenAnimationBuilder(
          tween: Tween<double>(
              begin: iconProvider.targetvalue, end: iconProvider.targetvalue),
          duration: const Duration(milliseconds: 320),
          builder: (context, value, child) {
            return IconButton(
              icon: Icon(
                CupertinoIcons.heart_fill,
                color: iconProvider.iconColor,
                size: value,
              ),
              onPressed: () {
                iconProvider.changeIconColor();
              },
            );
          },
        );
      },
    );
  }
}
