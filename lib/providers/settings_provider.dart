import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier{
  ThemeMode theme = ThemeMode.light;
  String language = "en";

  void changeTheme(ThemeMode newTheme)async{
    if(theme == newTheme) return;
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    if(newTheme == ThemeMode.dark){
      _prefs.setBool("Theme", true);
    }else{
      _prefs.setBool("Theme", false);
    }
    theme = newTheme;
    notifyListeners();
  }

  void changeLanguage(String newLanguage) async{
    if(language == newLanguage) return;
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString("Language", newLanguage);
    language = newLanguage;
    notifyListeners();
  }

initialize() async{
  final SharedPreferences _prefs = await SharedPreferences.getInstance();
  language = _prefs.getString("Language")??"en";
  theme=_prefs.getBool("Theme")==true?ThemeMode.dark:ThemeMode.light;
  notifyListeners();
}
}