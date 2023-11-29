import 'package:flr_animtn/controller/car_provider.dart';
import 'package:flr_animtn/controller/locale_provider.dart';
import 'package:flr_animtn/controller/thumb_icon_provider.dart';
import 'package:flr_animtn/l10n/l10n.dart';
import 'package:flr_animtn/view/home/homescreen.dart';
import 'package:flr_animtn/view/mainmenu/menudrawer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      
        ChangeNotifierProvider(create: (context) => LocaleProvider(),),
        ChangeNotifierProvider(create: (context) => CarCollectionProvider(),),
        ChangeNotifierProvider(create: (context) => ThumbIconProvider(),)
        
      
    ],

    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        supportedLocales: L10n.all,
        locale: Provider.of<LocaleProvider>(context).locale,
        localizationsDelegates: const [
          
         AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        debugShowCheckedModeBanner: false,
        title: 'Car Hub',
        theme: ThemeData(
        // Use the GoogleFonts class to apply Google Fonts
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
        home: const MainMenuDrawer(),
    );
  }
}

