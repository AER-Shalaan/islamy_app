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
      children: [
        Expanded(
          flex: 1,
            child: Image.asset("assets/images/ahadeth_image.png")),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(color: Theme.of(context).colorScheme.tertiary,width: 2)
              )),
            child: Text("الأحاديث",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Theme.of(context).colorScheme.onPrimary))
        ),
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