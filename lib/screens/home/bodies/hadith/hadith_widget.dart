import 'package:flutter/material.dart';



class HadithWidget extends StatelessWidget {
  const HadithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset("assets/images/ahadeth_image.png")),
        Divider(color: Theme.of(context).colorScheme.tertiary,
          height: 10,
          thickness: 2,),
        Center(child: Text("الأحاديث",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),)),
        Divider(color: Theme.of(context).colorScheme.tertiary,
          height: 10,
          thickness: 2,),
        Expanded(
            flex: 3,
            child: Text("    sd"))
      ],
  
    );
  }
}