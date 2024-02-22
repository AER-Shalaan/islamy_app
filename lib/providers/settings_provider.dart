import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  ThemeMode theme = ThemeMode.light;
  String language = "en";
  void changeTheme(ThemeMode newThem){
    if(theme == newThem) return;
    theme = newThem;
    notifyListeners();
  }
  void changeLanguage(String newLanguage){
    if(language == newLanguage) return;
    language = newLanguage;
    notifyListeners();
  }

}