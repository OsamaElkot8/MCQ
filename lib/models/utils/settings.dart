import 'package:flutter/material.dart';
import 'package:mcq/models/utils/language/languages.dart';
import 'package:mcq/models/utils/shared_preferences/shared_preferences.dart';

class Settings {
  late Locale locale;
  late ThemeMode theme;
  Settings({required this.locale, required this.theme});

  Settings.defaultSettings() {
    locale = Locale(EnumLanguage.english.localeValue());
    theme = ThemeMode.light;
  }

  static Future<Settings> getSettingsFromSharedPreferences() async {
    Locale locale = await SharedPreferences.instance.getLocale();
    ThemeMode theme = await SharedPreferences.instance.getTheme();
    return Settings(locale: locale, theme: theme);
  }
}
