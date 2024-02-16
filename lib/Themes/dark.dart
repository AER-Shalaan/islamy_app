import 'package:flutter/material.dart';

class DarkTheme{
  static ThemeData dark =
  ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 30 ,fontWeight: FontWeight.bold),
          shadowColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white)
      ),
      cardTheme: CardTheme(
        color: const Color(0xff141A2E).withOpacity(0.50),
        margin: const EdgeInsets.all(20.0),
        elevation: 10,
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff141A2E),
          primary: const Color(0xff141A2E),
          onPrimary: Colors.white,
          secondary: Colors.black,
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