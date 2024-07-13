import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/head_of_seb7a.png"),
          Image.asset("assets/images/body_of_seb7a.png"),
          Column(
            children: [
              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
                child: Text("Number of praises",
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
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
                margin:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                decoration: BoxDecoration(
                  color: AppColors.primaryLightColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "سبحان الله",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
