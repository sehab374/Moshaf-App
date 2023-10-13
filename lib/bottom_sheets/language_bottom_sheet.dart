import 'package:flutter/material.dart';
import 'package:islami_v2/myThemeData.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
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
            provider.changeLanguage("en");
          },
          child: Row(
            children: [
              Text(AppLocalizations.of(context)!.english,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.languageCode == "en"
                          ? MyThemeData.primaryColor
                          : MyThemeData.blackColor)),
              Spacer(),
              provider.languageCode == "en"
                  ? Icon(Icons.done,
                      size: 35,
                      color: provider.languageCode == "en"
                          ? MyThemeData.primaryColor
                          : Theme.of(context).colorScheme.secondary)
                  : SizedBox.shrink()
            ],
          ),
        ),
        InkWell(
          onTap: () {
            provider.changeLanguage("ar");
          },
          child: Row(
            children: [
              Text(AppLocalizations.of(context)!.arabic,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.languageCode == "ar"
                          ? MyThemeData.primaryColor
                          : MyThemeData.blackColor)),
              Spacer(),
              provider.languageCode == "en"
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
