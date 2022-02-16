import 'package:flutter/material.dart';
import 'package:mcq/main.dart';

class UIHelper {
  static ThemeData getTheme() => Theme.of(navigatorKey.currentContext!);
  static ColorScheme getColorScheme() => getTheme().colorScheme;
  static TextTheme getTextTheme() => getTheme().textTheme;
  static InputDecorationTheme getInputDecorationTheme() =>
      getTheme().inputDecorationTheme;
}
