import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/app_colors.dart';
import 'package:provider/provider.dart';

import '../providers/app_config_provider.dart';

int tasbeehCounter = 0;
int index = 0;
double angle = 0;

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    List<String> praises = [
      AppLocalizations.of(context)!.praise1,
      AppLocalizations.of(context)!.praise2,
      AppLocalizations.of(context)!.praise3,
    ];

    var provider = Provider.of<AppConfigProvider>(context);

    return ListView(
      children: [
        Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      padding: provider.isDarkMode()
                          ? EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.09)
                          : EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.04),
                      child: Transform.rotate(
                        angle: angle,
                        child: provider.isDarkMode()
                            ? Image.asset(
                                "assets/images/dark_body_of_seb7a.png")
                            : Image.asset("assets/images/body_of_seb7a.png"),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: provider.isDarkMode()
                          ? Image.asset("assets/images/dark_head_of_sebha.png")
                          : Image.asset("assets/images/head_of_seb7a.png"),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.03),
                    child: Text(AppLocalizations.of(context)!.num_of_praises,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.02),
                    decoration: BoxDecoration(
                      color: provider.isDarkMode()
                          ? AppColors.primaryDarkColor
                          : AppColors.secondLightColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        tasbeehCounter.toString(),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      increaseTasbeehCounter();
                      setState(() {});
                    },
                    child: Text(
                      praises[index],
                      style: provider.isDarkMode()
                          ? Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: AppColors.blackColor)
                          : Theme.of(context).textTheme.bodyMedium,
                    ),
                    style: ButtonStyle(
                        backgroundColor: provider.isDarkMode()
                            ? MaterialStatePropertyAll<Color>(
                                AppColors.yellowColor)
                            : MaterialStatePropertyAll<Color>(
                                AppColors.whiteColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  rotate() async {
    await Future.delayed(Duration(milliseconds: 25), () {
      setState(() {
        angle += 0.1;
      });
    });
  }

  void increaseTasbeehCounter() {
    rotate();
    if (tasbeehCounter < 32)
      tasbeehCounter++;
    else {
      tasbeehCounter = 0;
      indexCounter();
    }
  }

  void indexCounter() {
    if (index < 3) index++;
    if (index == 3) index = 0;
  }
}
