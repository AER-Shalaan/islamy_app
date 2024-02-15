import 'package:flutter/material.dart';
import 'package:islamy_app/screens/widgets_details/quran_details_screen.dart';

class QuranTitleWidget extends StatelessWidget {
  QuranTitleWidget({required this.title,required this.versesNumber,required this.index,super.key});
  String title;
  String versesNumber;
  int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, QuranDetailsScreen.routeName,arguments: QuranDetailsArgs(title, index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Center(child: Text(title,style: const TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),))),
          Container(
            color:Theme.of(context).colorScheme.tertiary,
            height: 50,
            width: 2,
          ),
          Expanded(child: Center(child: Text(versesNumber,style: const TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),))),
        ],
      ),
    );
  }
}
