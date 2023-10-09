import 'package:flutter/material.dart';
import 'package:islami_v2/myThemeData.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = "radio";

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> zekr = [
    "لا الله الا الله",
    "الله اكبر",
    "الحمد لله",
    "سبحان الله"
  ];
  int index = 0;

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(

            // Transform(
            // alignment: Alignment.center, //origin: Offset(100, 100)
            //     transform: Matrix4.rotationZ(0.3),
            //     child: Container(
            //       color: Colors.purpleAccent,
            //       width: 200,
            //       height: 200,
            //     ),
            child: Transform(
                transform: Matrix4.rotationZ((70 * count) / 360),
                alignment: Alignment.center,
                child: Image.asset("assets/images/seb7a_img.png"))),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("عدد التسبيحات",
                  style: Theme.of(context).textTheme.bodyMedium),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyThemeData.primaryColor,
                ),
                padding: EdgeInsets.all(15),
                child: Text(
                  "$count",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: MyThemeData.primaryColor,
                ),
                padding: EdgeInsets.all(15),
                child: InkWell(
                  onTap: () {
                    if (count < 30)
                      count++;
                    else {
                      count = 0;
                      index++;
                    }
                    if (index == 4) index = 0;

                    setState(() {});
                  },
                  child: Text(
                    zekr[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
