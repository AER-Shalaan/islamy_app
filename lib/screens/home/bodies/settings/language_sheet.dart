import 'package:flutter/material.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem("English"),
          SizedBox(height: 15),
          getUnselectedItem("العربية")
        ],
      ),
    );
  }

  Widget getSelectedItem(String language){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(language,style: Theme.of(context).textTheme.bodySmall),
        Icon(Icons.check,color: Theme.of(context).colorScheme.tertiary ,)
      ],
    );
  }

  Widget getUnselectedItem(String language){
    return Text(language ,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18));
  }
}
