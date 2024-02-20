import 'package:flutter/material.dart';

class ThemeSheet extends StatefulWidget {
  const ThemeSheet({super.key});

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem("Light"),
          SizedBox(height: 15),
          getUnselectedItem("Dark")
        ],
      ),
    );
  }

  Widget getSelectedItem(String selectedTheme){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(selectedTheme,style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 20,fontWeight: FontWeight.bold)),
        Icon(Icons.check,color: Theme.of(context).colorScheme.tertiary ,)
      ],
    );
  }

  Widget getUnselectedItem(String unselectedTheme){
    return Text(unselectedTheme ,style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,fontSize: 18));
  }
}
