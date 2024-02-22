import 'package:flutter/material.dart';
import 'package:islamy_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem(provider.language == "ar"?AppLocalizations.of(context)!.arabic:AppLocalizations.of(context)!.english),
          const SizedBox(height: 15),
          InkWell(
               onTap: (){
                 Navigator.pop(context);
                 provider.changeLanguage(provider.language == "ar"?"en":"ar");
               },
              child: getUnselectedItem(provider.language == "ar"?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic))
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
