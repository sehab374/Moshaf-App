import 'package:flutter/material.dart';
import 'package:islami_v2/myThemeData.dart';

import '../sura_model.dart';
import '../suradetails.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class QuranTab extends StatelessWidget {
  static const String routeName = "quran";

  static List<String> soraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.asset("assets/images/quran_image.png"),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 2,
        ),
        Text(AppLocalizations.of(context)!.suraNames
        , style: Theme.of(context).textTheme.bodyMedium),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: MyThemeData.primaryColor,
              thickness: 1,
              indent: 40,
              endIndent: 40,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, SuraDetailsScreen.routeName,
                  //     arguments: SuraModel(soraName[index], index));
                  Navigator.pushNamed(context, SuraDetailsScreen.routeName,arguments:SuraModel(soraName[index], index) );
                },
                child: Text(
                  soraName[index],
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              );
            },
            itemCount: soraName.length,
          ),
        )
      ]),
    );
  }
}
