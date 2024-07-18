import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../app_colors.dart';
import '../providers/app_config_provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return ListView(
      children: [
        Center(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.26),
                  child: Image.asset("assets/images/radio_logo.png")),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.03),
                    child: Text(AppLocalizations.of(context)!.radio_name,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_next,
                            size: MediaQuery.of(context).size.height * 0.05,
                            color: provider.isDarkMode()
                                ? AppColors.yellowColor
                                : AppColors.blackColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow,
                            size: MediaQuery.of(context).size.height * 0.08,
                            color: provider.isDarkMode()
                                ? AppColors.yellowColor
                                : AppColors.blackColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_previous,
                            size: MediaQuery.of(context).size.height * 0.05,
                            color: provider.isDarkMode()
                                ? AppColors.yellowColor
                                : AppColors.blackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
