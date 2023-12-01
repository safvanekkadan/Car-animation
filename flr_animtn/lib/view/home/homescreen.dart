import 'package:flr_animtn/constants/border.dart';
import 'package:flr_animtn/constants/colors.dart';
import 'package:flr_animtn/constants/sizedbox.dart';
import 'package:flr_animtn/view/home/widgets/list.dart';
import 'package:flr_animtn/view/home/widgets/menuwidget.dart';
import 'package:flr_animtn/view/home/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*1/1,
          //height: double.infinity,
          padding: const EdgeInsets.all(20),
          
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/abc.jpg",
                ),
                fit: BoxFit.cover,
                

                ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cHeight20,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   MenuWidget(),
                  
                 ],
               ),
              cHeight10,
              SizedBox(
                height: 130,
                child: ScreenTitle(
                  text: AppLocalizations.of(context)!.texttitle,),
              ),
              Container(
                height: 500,
                decoration: BoxDecoration(
                  boxShadow:const [
                    BoxShadow(
                      color: cBlackColor45,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3)
                    )
                  ],
                    color: cTransparentColor,
                    borderRadius: cRadius20),
                child:  const CarList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

