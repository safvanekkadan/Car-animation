import 'package:flr_animtn/constants/border.dart';
import 'package:flr_animtn/constants/colors.dart';
import 'package:flr_animtn/controller/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DropdownButtonWidget extends StatelessWidget {
  const DropdownButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, value, child) {
        return PopupMenuButton(
          color: cLightBrownWithOpacity,
          shape: ContinuousRectangleBorder(
            borderRadius: cRadius20,
          ),
          itemBuilder: ((context) => [
                PopupMenuItem(
                  value: 1,
                  onTap: () => value.setLocale(const Locale('en')),
                  child: const Text("English",style: TextStyle(color: cWhiteColor,fontWeight: FontWeight.bold),),
                ),
                PopupMenuItem(
                  value: 2,
                  onTap: () => value.setLocale(const Locale('hi')),
                  child: const Text("Hindi",style: TextStyle(color: cWhiteColor,fontWeight: FontWeight.bold),),
                ),
                PopupMenuItem(
                  value: 3,
                  onTap: () => value.setLocale(const Locale('es')),
                  child: const Text("Spanish",style: TextStyle(color: cWhiteColor,fontWeight: FontWeight.bold),),
                ),
                 PopupMenuItem(
                  value: 4,
                  onTap: () => value.setLocale(const Locale('ml')),
                  child: const Text("Malayalam",style: TextStyle(color: cWhiteColor,fontWeight: FontWeight.bold),),
                ),
                PopupMenuItem(
                  value: 5,
                  onTap: () => value.setLocale(const Locale('ar')),
                  child: const Text("Arabic",style: TextStyle(color: cWhiteColor,fontWeight: FontWeight.bold),),
                ),
                 PopupMenuItem(
                  value: 6,
                  onTap: () => value.setLocale(const Locale('ko')),
                  child: const Text("Korean",style: TextStyle(color: cWhiteColor,fontWeight: FontWeight.bold),),
                ),
              ]),
          child: const Icon(
            Icons.menu,
            size: 32,
          ),
        );
      },
    );
  }
}
