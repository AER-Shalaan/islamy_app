import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = "QuranDetailsScreen";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranDetailsArgs args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    if(lines.isEmpty){
      readQuranFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage((provider.theme == ThemeMode.dark?"assets/images/dark_background.png":"assets/images/background.png")),
            fit: BoxFit.fill
        )),
        child:Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami ,style: Theme.of(context).textTheme.titleLarge)
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("سورة ${args.title}", style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(width: 10,),
                          Icon(Icons.play_circle,color: Theme.of(context).colorScheme.onSecondary ,size: 25,)
                        ],
                      ),
                    ),
                    const Divider(height: 1, indent: 30, endIndent: 30),
                    lines.isNotEmpty ?Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(sura, style: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ) : Container(
                        width: double.infinity,
                        height: 100,
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(color: Theme.of(context).colorScheme.tertiary,)
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
  List<String> lines =[];
  String sura = "";
  void readQuranFile(int index) async {
    String quran = await rootBundle.loadString("assets/texts/Quran_texts/${index+1}.txt");
    lines = quran.split("\n");
    if(lines.isNotEmpty) {
      for (int i = 0; i < lines.length; i++) {
        sura += lines[i];
        sura += "(${i + 1}) ";
      }
    }
    setState(() {
    });
  }
}

class QuranDetailsArgs{
  String title;
  int index;
  QuranDetailsArgs(this.title,this.index);
}
