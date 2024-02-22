import 'package:flutter/material.dart';
import 'package:islamy_app/providers/settings_provider.dart';
import 'package:islamy_app/screens/home/bodies/settings/theme_sheet.dart';
import 'package:provider/provider.dart';
import 'language_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language, style: Theme.of(context).textTheme.titleMedium),
          GestureDetector(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
                height: 50,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.tertiary),borderRadius: BorderRadius.circular(15),color: Theme.of(context).colorScheme.primary.withOpacity(0.50)),
                child: Text(provider.language=="ar"?AppLocalizations.of(context)!.arabic:AppLocalizations.of(context)!.english, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 20))),
          ),
          const SizedBox(height: 10),
          Text(AppLocalizations.of(context)!.theme, style: Theme.of(context).textTheme.titleMedium),
          GestureDetector(
              onTap: (){
                showThemeBottomSheet();
              },
            child: Container(
                height: 50,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.tertiary),borderRadius: BorderRadius.circular(15),color: Theme.of(context).colorScheme.primary.withOpacity(0.50)),
                child: Text(provider.theme == ThemeMode.dark?AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 20))
            ),
          ),

        ],
      ),
    );
  }

  void showLanguageBottomSheet(){
    showModalBottomSheet(context: context, builder: (context){
      return const LanguageSheet();
    });
  }

  void showThemeBottomSheet(){
    showModalBottomSheet(context: context, builder: (context){
      return const ThemeSheet();
    });
  }
}
