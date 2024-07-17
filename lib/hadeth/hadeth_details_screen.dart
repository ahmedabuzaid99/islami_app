import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/hadeth/hadeth_tab.dart';
import 'package:islami_app/hadeth/item_hadeth_details.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

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
                  right: MediaQuery.of(context).size.width * 0.08,
                  top: MediaQuery.of(context).size.height * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(args.title),
                    Container(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: AppColors.primaryLightColor,
                thickness: 3,
                indent: 40,
                endIndent: 40,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: AppColors.primaryLightColor,
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
