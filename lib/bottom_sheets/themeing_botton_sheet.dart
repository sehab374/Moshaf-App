import 'package:flutter/material.dart';
import 'package:islami_v2/myThemeData.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeingBottomSheet extends StatelessWidget {
  //bool isEnglish = true;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(children: [
        InkWell(
          onTap: () {
            // provider.changeLanguage("en");
            provider.changeTheme(ThemeMode.dark);
          },
          child: Row(
            children: [
              Text("dark",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color:provider.modeApp==ThemeMode.dark? Theme.of(context).colorScheme.background:MyThemeData.blackColor)),
              Spacer(),
              provider.modeApp ==ThemeMode.dark
                  ? Icon(Icons.done,
                  size: 35,
                  color:  provider.modeApp ==ThemeMode.dark
                      ? MyThemeData.primaryColor
                      : Theme.of(context).colorScheme.secondary)
                  : SizedBox.shrink()
            ],
          ),
        ),
        InkWell(
          onTap: () {
            // provider.changeLanguage("ar");
            provider.changeTheme(ThemeMode.light);

          },
          child: Row(
            children: [
              Text("light",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color:provider.modeApp==ThemeMode.light? Theme.of(context).colorScheme.background:Colors.white)),
              Spacer(),
              provider.modeApp ==ThemeMode.dark
                  ? SizedBox.shrink()
                  : Icon(Icons.done,
                  size: 35,
                  color: provider.languageCode == "ar"
                      ? MyThemeData.primaryColor
                      : MyThemeData.blackColor)
            ],
          ),
        )
      ]),
    );
  }
}
