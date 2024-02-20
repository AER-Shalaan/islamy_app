import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  ThemeMode theme = ThemeMode.light;

  void changeTheme(ThemeMode newThem){
    if(theme == newThem) return;
    theme = newThem;
    notifyListeners();
  }
}