import 'package:flutter/material.dart';
import 'package:islami_v2/hadeth_model.dart';
import 'package:islami_v2/myThemeData.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName = "ahadethdetails";

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as HadethModel;

    //var arg = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
      children: [
        Image.asset("assets/images/background.png",
            width: double.infinity, fit: BoxFit.cover),
        Scaffold(
            appBar: AppBar(
                title: Text(
              "اسلامي",
              style: Theme.of(context).textTheme.bodyLarge,

              //Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.amber),
            )),
            body: Card(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: MyThemeData.primaryColor)),
              elevation: 12,
              margin: EdgeInsets.all(30),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(

                  children: [
                    Text(arg.title),
                    Divider(
                        thickness: 1,
                        color: MyThemeData.primaryColor,
                        indent: 40,
                        endIndent: 40),
                    Expanded(
                      child: arg.content.isEmpty
                          ? Center(
                            child: CircularProgressIndicator(
                                color: MyThemeData.primaryColor,
                              ),
                          )
                          : ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Text(
                                    //arg.content.toString(),
                                    "${arg.content}",
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              },
                              itemCount: arg.content.length,
                            ),
                    )
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
