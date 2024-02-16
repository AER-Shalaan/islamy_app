import 'package:flutter/material.dart';
import 'package:islamy_app/Themes/dark.dart';
import 'package:islamy_app/Themes/light.dart';
import 'package:islamy_app/screens/hadith_details/hadith_details_screen.dart';
import 'package:islamy_app/screens/home/home_screen.dart';
import 'package:islamy_app/screens/quran_details/quran_details_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islamy',
      debugShowCheckedModeBanner: false,
      theme: LightTheme.light,
      darkTheme: DarkTheme.dark,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=> HomeScreen(),
        QuranDetailsScreen.routeName:(_)=> QuranDetailsScreen(),
        HadithDetailsScreen.routeName:(_)=> HadithDetailsScreen(),
      },
    );
  }
}
