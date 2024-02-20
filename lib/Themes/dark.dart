import 'package:flutter/material.dart';

class DarkTheme{
  static  Color primaryColor = const Color(0xff141A2E);
  static  Color onPrimaryColor = Colors.white;
  static  Color secondaryColor = Colors.black;
  static  Color onSecondaryColor = const Color(0xffFACC1D);
  static  Color tertiaryColor = const Color(0xffFACC1D);
  static ThemeData dark =
  ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:  AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(color: onPrimaryColor,fontSize: 30 ,fontWeight: FontWeight.bold),
          shadowColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: onPrimaryColor)),
      dividerTheme: DividerThemeData(
          color: tertiaryColor,
          thickness: 2
      ),
      cardTheme: CardTheme(
        color: primaryColor.withOpacity(0.50),
        margin: const EdgeInsets.all(20.0),
        elevation: 10,
      ),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: primaryColor, elevation: 10),
      textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold ,color: onPrimaryColor),
          titleMedium: TextStyle(fontSize:25 ,fontWeight: FontWeight.w600 ,color: onPrimaryColor),
          titleSmall: TextStyle(fontSize:25 ,fontWeight: FontWeight.w600 ,color: onSecondaryColor),
          bodyLarge: TextStyle(fontSize:23 ,fontWeight: FontWeight.w500 ,color: onPrimaryColor),
          bodyMedium: TextStyle(fontSize:20 ,fontWeight: FontWeight.w400 ,color: onSecondaryColor)
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          onPrimary: onPrimaryColor,
          secondary: secondaryColor,
          onSecondary: onSecondaryColor,
          tertiary: tertiaryColor
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: onSecondaryColor,
          unselectedItemColor: Colors.white,
          selectedIconTheme: const IconThemeData(size: 32),
          unselectedIconTheme: const IconThemeData(size: 20)),
      useMaterial3: true
  );
}