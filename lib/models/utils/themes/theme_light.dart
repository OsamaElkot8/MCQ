import 'package:flutter/material.dart';
import 'package:mcq/ui/ui_constants.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: UiConstants.colorWhite,
  colorScheme: const ColorScheme.light(
      primary: UiConstants.colorPrimary,
      secondary: UiConstants.colorGrey,
      onSecondary: UiConstants.colorLightGrey,
      background: UiConstants.colorWhite),
  primaryColor: UiConstants.colorPrimary,
  textTheme: TextTheme(
      bodyText1: UiConstants.textStyleDefaultText,
      bodyText2: UiConstants.textStyleDefaultTextField,
      headline1: UiConstants.textStyleHomeSearchTitle,
      headline2: UiConstants.textStyleHomeSearchTitle
          .copyWith(color: UiConstants.colorPrimary),
      headline3: UiConstants.textStyleDefaultTextTitle,
      headline4: UiConstants.textStyleDefaultTextTitle3,
      subtitle1: UiConstants.textStyleDefaultSubtitle,
      button: UiConstants.textStyleDefaultButtonText),
  inputDecorationTheme: InputDecorationTheme(
    border: UiConstants.inoutBorderDefaultTextField,
    focusedBorder: UiConstants.inoutBorderDefaultTextField,
    hintStyle: UiConstants.textStyleDefaultTextField
        .copyWith(color: UiConstants.colorGrey),
  ),
  tabBarTheme: const TabBarTheme(
      indicator: UiConstants.boxDecorationDefaultTabBar,
      labelStyle: UiConstants.textStyleDefaultTextTitle,
      unselectedLabelStyle: UiConstants.textStyleDefaultTextTitle,
      unselectedLabelColor: UiConstants.colorGrey,
      labelPadding: UiConstants.edgeInsetsDefaultPadding),
  appBarTheme: const AppBarTheme(
      backgroundColor: UiConstants.colorPrimary,
      titleTextStyle: UiConstants.textStyleDefaultTextTitle2,
      iconTheme: IconThemeData(color: UiConstants.colorWhite)),
  dividerColor: UiConstants.colorGrey,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
        elevation: UiConstants.elevationDefaultTextButton,
        backgroundColor: UiConstants.colorPrimary,
        shape: UiConstants.outlinedBorderDefaultTextButton,
        textStyle: UiConstants.textStyleDefaultTextTitle,
        primary: UiConstants.colorWhite,
        minimumSize: UiConstants.sizeMinimumButton,
        padding: UiConstants.edgeInsetsDefaultPaddingButton),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        backgroundColor: UiConstants.colorWhite,
        shape: UiConstants.outlinedBorderDefaultOutlinedButton,
        textStyle: UiConstants.textStyleDefaultOutlinedButton,
        primary: UiConstants.colorPrimary,
        minimumSize: UiConstants.sizeMinimumButton,
        padding: UiConstants.edgeInsetsDefaultPaddingButton,
        side: UiConstants.borderSideDefaultOutlinedButton),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: UiConstants.colorWhite,
      shape: UiConstants.outlinedBorderDefaultBottomSheet),
);
