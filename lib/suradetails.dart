import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_v2/myThemeData.dart';
import 'package:islami_v2/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "suradetails";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    // var arg=ModalRoute.of(context)?.settings.arguments as SuraModel;
    //var arg = ModalRoute.of(context)?.settings.arguments as SuraModel;
    //var arg = ModalRoute.of(context)?.settings.arguments as SuraModel;

    var arg = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(arg.index);
    }
    return Stack(
      children: [
        Image.asset("assets/images/background.png",
            width: double.infinity, fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
              title: Text(
            arg.name,
            style: Theme.of(context).textTheme.bodyLarge,
          )),
          body: Card(
            margin: EdgeInsets.all(25),
            elevation: 12,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: MyThemeData.primaryColor)),
            child: verses.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                      color: MyThemeData.primaryColor,
                    ),
                  )
                : ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        thickness: 1,
                        color: MyThemeData.primaryColor,
                        indent: 50,
                        endIndent: 50,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          verses[index],
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: MyThemeData.blackColor),
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                    itemCount: verses.length),
          ),
        ),
      ],
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    print(lines);
    setState(() {});
  }
}
