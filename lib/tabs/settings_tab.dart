import 'package:flutter/material.dart';
import 'package:islami_v2/myThemeData.dart';
import 'package:islami_v2/providers/my_provider.dart';
import 'package:provider/provider.dart';

import '../bottom_sheets/language_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../bottom_sheets/themeing_botton_sheet.dart';

class SettingsTab extends StatefulWidget {
  static const String routeName = "settings";

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(AppLocalizations.of(context)!.language),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                padding: EdgeInsets.symmetric(horizontal: 18),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: MyThemeData.primaryColor)),
                child: Text(pro.languageCode == "en"
                    ? AppLocalizations.of(context)!.english
                    : AppLocalizations.of(context)!.arabic)),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Themeing"),
          InkWell(
            onTap: () {
              showThemeingBottomSheet();
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                padding: EdgeInsets.symmetric(horizontal: 18),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: MyThemeData.primaryColor)),
                child: Text(pro.modeApp==ThemeMode.light?"ligth":"dark")),
          ),
        ]),
      ),
    );
  }

  showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      builder: (context) {
        return LanguageBottomSheet()
            // Container(
            // height: MediaQuery.of(context).size.height*0.7,)

            ;
      },
    );
  }

  showThemeingBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      builder: (context) {
        return ThemeingBottomSheet();
      },
    );
  }
}
