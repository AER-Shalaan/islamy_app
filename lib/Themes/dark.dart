import 'package:flutter/material.dart';

class DarkTheme{
  static ThemeData dark =
  ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 30 ,fontWeight: FontWeight.bold)
      ),
      cardTheme: CardTheme(
        color: const Color(0xff141A2E).withOpacity(0.75),
        margin: const EdgeInsets.all(20.0),
        elevation: 10,
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff141A2E),
          primary: const Color(0xff141A2E),
          onPrimary: Colors.white,
          secondary: const Color(0xff141A2E).withOpacity(0.75),
          onSecondary: const Color(0xffFACC1D),
          tertiary: const Color(0xffFACC1D)
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xffFACC1D),
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
              size: 32
          ),
          unselectedIconTheme: IconThemeData(
              size: 20)
      ),
      useMaterial3: true
  );
}