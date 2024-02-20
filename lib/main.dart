import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy_app/Themes/dark.dart';
import 'package:islamy_app/Themes/light.dart';
import 'package:islamy_app/providers/settings_provider.dart';
import 'package:islamy_app/screens/hadith_details/hadith_details_screen.dart';
import 'package:islamy_app/screens/home/home_screen.dart';
import 'package:islamy_app/screens/quran_details/quran_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'Islamy',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: const Locale("ar"),

      theme: LightTheme.light,
      darkTheme: DarkTheme.dark,
      themeMode: provider.theme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=> HomeScreen(),
        QuranDetailsScreen.routeName:(_)=> QuranDetailsScreen(),
        HadithDetailsScreen.routeName:(_)=> const HadithDetailsScreen(),
      },
    );
  }
}
