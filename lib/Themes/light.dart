import 'package:flutter/material.dart';

class LightTheme{
  static  Color primaryColor = const Color(0xffB7935F);
  static  Color onPrimaryColor = Colors.black;
  static  Color secondaryColor = Colors.white;
  static  Color onSecondaryColor =  Colors.black;
  static  Color tertiaryColor = const Color(0xffB7935F);
  static ThemeData light =
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
      cardTheme: const CardTheme(
        color: Colors.white,
        margin: EdgeInsets.all(20.0),
        elevation: 10,
      ),
      bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white, elevation: 10),
      textTheme: TextTheme(
        titleLarge: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold ,color: onPrimaryColor),
        titleMedium: TextStyle(fontSize:25 ,fontWeight: FontWeight.w600 ,color: onPrimaryColor),
        titleSmall: TextStyle(fontSize:25 ,fontWeight: FontWeight.w600 ,color: onSecondaryColor),
        bodyLarge: TextStyle(fontSize:23 ,fontWeight: FontWeight.w500 ,color: onPrimaryColor),
        bodyMedium: TextStyle(fontSize:20 ,fontWeight: FontWeight.w400 ,color: onSecondaryColor),
        bodySmall: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold ,color: tertiaryColor)
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