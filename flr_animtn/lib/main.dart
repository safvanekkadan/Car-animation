import 'package:flr_animtn/controller/car_provider.dart';
import 'package:flr_animtn/controller/locale_provider.dart';
import 'package:flr_animtn/controller/thumb_icon_provider.dart';
import 'package:flr_animtn/l10n/l10n.dart';
import 'package:flr_animtn/view/home/homescreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LocaleProvider(),),
        ChangeNotifierProvider(create: (context) => CarCollectionProvider(),),
        ChangeNotifierProvider(create: (context) => ThumbIconProvider(),)
        
      ],
      child: MaterialApp(
        supportedLocales: L10n.all,
        locale: Provider.of<LocaleProvider>(context).locale,
        localizationsDelegates: const [
          
         AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        debugShowCheckedModeBanner: false,
        title: 'Animation',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomeScreen()),
    );
  }
}

