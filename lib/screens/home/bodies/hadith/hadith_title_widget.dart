import 'package:flutter/material.dart';
import 'package:islamy_app/screens/hadith_details/hadith_details_screen.dart';
import 'package:islamy_app/screens/home/bodies/hadith/hadith_model.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithModel hadith;
  HadithTitleWidget({super.key,required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadithDetailsScreen.routeName,arguments: hadith);
      },
      child: Text(
        hadith.title,
        textAlign: TextAlign.center,
        style:Theme.of(context).textTheme.bodyLarge
      ),
    );
  }
}
