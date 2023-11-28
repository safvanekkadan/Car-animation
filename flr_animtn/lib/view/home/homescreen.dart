import 'package:flr_animtn/constants/border.dart';
import 'package:flr_animtn/constants/colors.dart';
import 'package:flr_animtn/constants/sizedbox.dart';
import 'package:flr_animtn/view/home/widgets/collections.dart';
import 'package:flr_animtn/view/home/widgets/dropdown.dart';
import 'package:flr_animtn/view/home/widgets/title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background_image.jpg"),
              fit: BoxFit.fill,
              ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cHeight20,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                //  MenuWidget(),
                 DropdownButtonWidget(),
               ],
             ),
            cHeight10,
            SizedBox(
              height: 130,
              child: ScreenTitle(text: AppLocalizations.of(context)!.texttitle),
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                  color: cLightBrownWithOpacity,
                  borderRadius: cRadius20),
              child:  CarList(),
            ),
          ],
        ),
      ),
    );
  }
}

