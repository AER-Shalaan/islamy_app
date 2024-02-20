import 'package:flutter/material.dart';
import 'package:islamy_app/generated/l10n.dart';
import 'package:islamy_app/screens/home/bodies/hadith/hadith_widget.dart';
import 'package:islamy_app/screens/home/bodies/quran/quran_widget.dart';
import 'package:islamy_app/screens/home/bodies/radio_widget.dart';
import 'package:islamy_app/screens/home/bodies/sebiha/sebiha_widget.dart';
import 'package:islamy_app/screens/home/bodies/settings/settings_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentNavIndex = 0;
  List<Widget> navWidget = [
    QuranWidget(),
    HadithWidget(),
    SebihaWidget(),
    RadioWidget(),
    SettingsWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill
      )),
      child: Scaffold(
        appBar: AppBar(
          title:  Text( AppLocalizations.of(context)!.islami,style: Theme.of(context).textTheme.titleLarge),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentNavIndex,
            onTap: (value) {
            setState(() {
              currentNavIndex = value;
            });
            },
            items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(AssetImage("assets/icons/moshaf_blue.png")),
              label: AppLocalizations.of(context)?.quran
          ),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(AssetImage("assets/icons/ahadeth_icon.png")),
              label: AppLocalizations.of(context)?.ahadeth
          ),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(AssetImage("assets/icons/sebha_icon.png")),
              label: AppLocalizations.of(context)?.sebiha
          ),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(AssetImage("assets/icons/radio_blue.png")),
              label: AppLocalizations.of(context)?.radio
          ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: const Icon(Icons.settings)
                  ,label: AppLocalizations.of(context)?.settings
              ),
        ]),
        body: navWidget[currentNavIndex],
      ),
    );
  }
}
