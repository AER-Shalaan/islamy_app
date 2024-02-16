import 'package:flutter/material.dart';

class LightTheme{
  static ThemeData light =
  ThemeData(
  scaffoldBackgroundColor : Colors.transparent,
  appBarTheme: const AppBarTheme(
  backgroundColor: Colors.transparent,
  centerTitle: true,
  titleTextStyle: TextStyle(color: Colors.black,fontSize: 30 ,fontWeight: FontWeight.bold),
      shadowColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black)
  ),
  cardTheme: const CardTheme(
  color: Colors.white,
  margin: EdgeInsets.all(20.0),
  elevation: 10,
  ),
  colorScheme: ColorScheme.fromSeed(
  seedColor: const Color(0xffB7935F),
  primary: const Color(0xffB7935F),
  onPrimary: Colors.black,
  secondary: const Color(0xffB7935F).withOpacity(0.75),
  onSecondary: Colors.black,
  tertiary: const Color(0xffB7935F)
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  selectedItemColor: Colors.black,
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