import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flr_animtn/constants/border.dart';
import 'package:flr_animtn/constants/colors.dart';
import 'package:flutter/material.dart';
class ScreenTitle extends StatelessWidget {
  final String? text;

  const ScreenTitle({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedTextKit(
          animatedTexts: [
            RotateAnimatedText(
              text!,
              textStyle: const TextStyle(
                fontSize: 40,
                color: cBlackColor45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          totalRepeatCount: 2,
        ),
        Center(
          child: ClipRRect(
              borderRadius: cRadius30,
              child: Text(
                text ?? '',
                style:  const TextStyle(
                  fontSize: 37,
                  color:Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                     BoxShadow(
                      color: cBlackColor45,
                      spreadRadius: 20,
                      blurRadius: 15,
                      offset: Offset(0, -2)
                    )
                  ]
                ),
              ),
          ),
        )
      ],
    );
  }
}
