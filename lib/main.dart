import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ahadethdetails.dart';
import 'home.dart';
import 'myThemeData.dart';
import 'tabs/ahadeth_tab.dart';
import 'tabs/quran_tab.dart';
import 'tabs/radio_tab.dart';
import 'tabs/sebha_tab.dart';
import 'tabs/settings_tab.dart';
import 'suradetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        QuranTab.routeName: (context) => QuranTab(),
        AhadethTab.routeName: (context) => AhadethTab(),
        SebhaTab.routeName: (context) => SebhaTab(),
        RadioTab.routeName: (context) => RadioTab(),
        SettingsTab.routeName: (context) => SettingsTab(),
        SuraDetailsScreen.routeName:(context) => SuraDetailsScreen(),
        AhadethDetails.routeName:(context) => AhadethDetails(),


      },
      theme: MyThemeData.lighttheme,
      darkTheme: MyThemeData.darktheme,
    );
  }
}
