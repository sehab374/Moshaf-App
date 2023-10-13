import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_v2/myThemeData.dart';
import 'package:islami_v2/providers/my_provider.dart';
import 'package:provider/provider.dart';

import 'tabs/ahadeth_tab.dart';
import 'tabs/quran_tab.dart';
import 'tabs/radio_tab.dart';
import 'tabs/sebha_tab.dart';
import 'tabs/settings_tab.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return SafeArea(
        child: Stack(
      children: [
        Image.asset(
          pro.getBackground()
          ,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
              title: Text(
                AppLocalizations.of(context)!.appTitle
                ,
            style: Theme.of(context).textTheme.bodyLarge,

            //Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.amber),
          )),
          body: tabs[index],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio.png")),
                    label: "الراديو",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                    label: "التسبيح",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                    label: "الاحاديث",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/quran.png")),
                    label: "القران",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "الاعدادات",
                    backgroundColor: MyThemeData.primaryColor)
              ]),
        ),
      ],
    ));
  }

  List<Widget> tabs = [
    RadioTab(),
    SebhaTab(),
    AhadethTab(),
    QuranTab(),
    SettingsTab()
  ];
}
