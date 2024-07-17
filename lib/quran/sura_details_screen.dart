import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/quran/item_sura_details.dart';
import 'package:islami_app/quran/sura_details_args.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.06,
            left: MediaQuery.of(context).size.width * 0.06,
            bottom: MediaQuery.of(context).size.height * 0.15,
            top: MediaQuery.of(context).size.height * 0.08,
          ),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.17,
                  top: MediaQuery.of(context).size.height * 0.08,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.play_circle,
                      size: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                    Text(args.name),
                  ],
                ),
              ),
              Divider(
                color: AppColors.primaryLightColor,
                thickness: 3,
                indent: 40,
                endIndent: 40,
              ),
              verses.isEmpty
                  ? CircularProgressIndicator(
                      color: AppColors.primaryLightColor,
                    )
                  : Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: AppColors.primaryLightColor,
                            thickness: 1,
                          );
                        },
                        itemBuilder: (context, index) {
                          return ItemSuraDetails(
                              content: verses[index], index: index);
                        },
                        itemCount: verses.length,
                      ),
                    )
            ],
          ),
        ),
      )
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split("\n");
    verses = lines;
    setState(() {});
  }
}
