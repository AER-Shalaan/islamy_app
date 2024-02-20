import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/screens/home/bodies/hadith/hadith_model.dart';

import 'hadith_title_widget.dart';

class HadithWidget extends StatefulWidget {

  @override
  State<HadithWidget> createState() => _HadithWidgetState();
}

class _HadithWidgetState extends State<HadithWidget> {
  @override
  Widget build(BuildContext context) {
    if(ahadeth.isEmpty){
      loadAhadethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
            child: Image.asset("assets/images/ahadeth_image.png")),
        const Divider(height: 1),
        Text("الأحاديث", style: Theme.of(context).textTheme.titleMedium),
        const Divider(height: 1),
        Expanded(
          flex: 3,
            child: ahadeth.isNotEmpty?
            ListView.custom(
              childrenDelegate: SliverChildBuilderDelegate((context, index)=>
              HadithTitleWidget(hadith: ahadeth[index])
              ,childCount: ahadeth.length
          ),
        )
                : CircularProgressIndicator(color: Theme.of(context).colorScheme.onPrimary,)
        )

      ],

    );
  }

  List<HadithModel> ahadeth =[];

  void loadAhadethFile() async{
   String ahadethContent = await rootBundle.loadString("assets/texts/ahadeth.txt");
   List<String> ahadethList = ahadethContent.trim().split("#");
   for(int i = 0 ; i< ahadethList.length ; i++){
     List<String> hadeth = ahadethList[i].trim().split("\n");
     String hadethTitle = hadeth[0];
     hadeth.removeAt(0);
     String hadethContent = hadeth.join("\n");
     ahadeth.add(HadithModel(hadethTitle, hadethContent));
   }
   setState(() {

   });
  }
}