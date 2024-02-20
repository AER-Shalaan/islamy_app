import 'package:flutter/material.dart';
import 'package:islamy_app/providers/settings_provider.dart';
import 'package:islamy_app/screens/home/bodies/hadith/hadith_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = "HadithDetailsScreen";
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadithModel hadithModel = ModalRoute.of(context)?.settings.arguments as HadithModel;
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return  Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage((provider.theme == ThemeMode.dark?"assets/images/dark_background.png":"assets/images/background.png")),
                fit: BoxFit.fill
            )),
        child:Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami,style: Theme.of(context).textTheme.titleLarge)
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(hadithModel.title, style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(width: 10,),
                          Icon(Icons.play_circle,color: Theme.of(context).colorScheme.onSecondary ,size: 25,),
                          const SizedBox(height: 10,),
                        ],
                      ),
                    ),
                    const Divider(height: 1, indent: 30, endIndent: 30,),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(hadithModel.content,
                            style: Theme.of(context).textTheme.bodyMedium
                        ),
                      ),
                    )


                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
