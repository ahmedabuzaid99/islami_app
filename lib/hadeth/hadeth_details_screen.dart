import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/hadeth/hadeth_tab.dart';
import 'package:islami_app/hadeth/item_hadeth_details.dart';
import 'package:provider/provider.dart';

import '../providers/app_config_provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(children: [
      provider.isDarkMode()
          ? Image.asset(
              'assets/images/main_dark_background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
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
            color: provider.isDarkMode()
                ? AppColors.primaryDarkColor
                : AppColors.whiteColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args.title,
                    style: TextStyle(
                        color: provider.isDarkMode()
                            ? AppColors.yellowColor
                            : AppColors.primaryLightColor),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ),
                ],
              ),
              Divider(
                color: provider.isDarkMode()
                    ? AppColors.yellowColor
                    : AppColors.whiteColor,
                thickness: 3,
                indent: 40,
                endIndent: 40,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: provider.isDarkMode()
                          ? AppColors.yellowColor
                          : AppColors.whiteColor,
                      thickness: 1,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemHadethDetails(content: args.content[index]);
                  },
                  itemCount: args.content.length,
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
