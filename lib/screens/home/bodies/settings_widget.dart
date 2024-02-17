import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language", style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,fontSize: 25,fontWeight: FontWeight.w500),),
          Container(
              height: 60,
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.tertiary),borderRadius: BorderRadius.circular(10),color: Theme.of(context).colorScheme.primary.withOpacity(0.50)),
              child: Text("English", style: TextStyle(color: Theme.of(context).colorScheme.onSecondary,fontSize: 20,fontWeight: FontWeight.w500))),
          SizedBox(height: 10),
          Text("Language", style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,fontSize: 25,fontWeight: FontWeight.w500),),
          Container(
              height: 60,
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.tertiary),borderRadius: BorderRadius.circular(10),color: Theme.of(context).colorScheme.primary.withOpacity(0.50)),
              child: Text("English", style: TextStyle(color: Theme.of(context).colorScheme.onSecondary,fontSize: 20,fontWeight: FontWeight.w500))),

        ],
      ),
    );
  }
}
