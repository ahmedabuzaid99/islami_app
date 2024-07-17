import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/app_colors.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04),
                    child: Image.asset("assets/images/body_of_seb7a.png"),
                  ),
                  Image.asset("assets/images/head_of_seb7a.png"),
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
                      color: AppColors.secondLightColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "30",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.03),
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.03),
                    decoration: BoxDecoration(
                      color: AppColors.primaryLightColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      AppLocalizations.of(context)!.praise1,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
