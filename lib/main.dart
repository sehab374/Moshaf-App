import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ahadethdetails.dart';
import 'home.dart';
import 'myThemeData.dart';
import 'providers/my_provider.dart';
import 'tabs/ahadeth_tab.dart';
import 'tabs/quran_tab.dart';
import 'tabs/radio_tab.dart';
import 'tabs/sebha_tab.dart';
import 'tabs/settings_tab.dart';
import 'suradetails.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

///state mangement -> share date all over screens and rebuild more than 1 screen
///types:
/// block* (observer pattern)
/// provider* (observer pattern)
/// reverpod
///git_x (mentor)

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MyProvider(),

      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      locale: Locale(pro.languageCode),

      // localizationsDelegates: [
      //   AppLocalizations.delegate, // Add this line
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale('en'), // English
      //   Locale('ar'), // Spanish
      // ],

      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        QuranTab.routeName: (context) => QuranTab(),
        AhadethTab.routeName: (context) => AhadethTab(),
        SebhaTab.routeName: (context) => SebhaTab(),
        RadioTab.routeName: (context) => RadioTab(),
        SettingsTab.routeName: (context) => SettingsTab(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        AhadethDetails.routeName: (context) => AhadethDetails(),
      },
      theme: MyThemeData.lighttheme,
      darkTheme: MyThemeData.darktheme,


       themeMode:pro.modeApp,




    );
  }
}
