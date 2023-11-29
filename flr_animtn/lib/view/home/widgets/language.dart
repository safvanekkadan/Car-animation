

import 'package:flr_animtn/constants/colors.dart';
import 'package:flr_animtn/controller/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:cBlackColor,
       body:Consumer<LocaleProvider>(
        builder: (context, value, child) {
          return ListView(
          children: [
            const SizedBox(height: 30,),
            const Padding(
              padding:  EdgeInsets.only(left:17),
              child:  Text(
                'Langauge Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
           title: const Text(
             'English',
             style: TextStyle(
              color: Colors.white,
               fontWeight: FontWeight.bold,
             ),
           ),
           onTap: (){
            value.setLocale( Locale('en'));
           },
            ),
            ListTile(
           title: const Text(
             'Hindi',
             style: TextStyle(
              color: Colors.white,
               fontWeight: FontWeight.bold,
             ),
           ),
           onTap: () {
                value.setLocale( Locale('hi'));
           },
            ),
            ListTile(
           title: const Text(
             'Spanish',
             style: TextStyle(
              color: Colors.white,
               fontWeight: FontWeight.bold,
             ),
           ),
           onTap: (){
                 value.setLocale( const Locale('es'));
           },
            ),
             ListTile(
           title: const Text(
             'Malayalam',
             style: TextStyle(
              color: Colors.white,
               fontWeight: FontWeight.bold,
             ),
           ),
           onTap: (){
                 value.setLocale( const Locale('ml'));
           },
            ),
          ],
          );
        },
      
       ),
    );
  }
}