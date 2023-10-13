import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_v2/myThemeData.dart';

import '../ahadethdetails.dart';
import '../hadeth_model.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class AhadethTab extends StatefulWidget {
  static const String routeName = "ahadeth";

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadAhadeth();
    }

    return Scaffold(
      body: Column(children: [
        Image.asset("assets/images/ahadeth_image.png"),
        Divider(
          thickness: 3,
          color: MyThemeData.primaryColor,
        ),
        Text(
          AppLocalizations.of(context)!.ahades,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Divider(
          thickness: 3,
          color: MyThemeData.primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AhadethDetails.routeName,
                      arguments:
                      allAhadeth[index]
                      // HadethModel(allAhadeth[index].title, allAhadeth[index].content)
                  );
                },
                child: Text(
                  // allAhadeth[index].title
                  " الحديث  رقم${index + 1} ",
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              );
            },
            itemCount: allAhadeth.length,
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1,
                color: MyThemeData.primaryColor,
                indent: 40,
                endIndent: 40,
              );
            },
          ),
        )
      ]),
    );
  }

  void loadAhadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethList = ahadeth.split("#");

      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethOneLines = hadethOne.trim().split("\n");
        String hadethTitle = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> hadethcontent = hadethOneLines;
        HadethModel hadethModel = HadethModel(hadethTitle, hadethcontent);

        // print(i);
        // print(hadethModel.title);
        // print(hadethModel.content);

        allAhadeth.add(hadethModel);
      }
    }).catchError((e) {
      print(e.toString());
    });

    //setState(() {});
  }
}
