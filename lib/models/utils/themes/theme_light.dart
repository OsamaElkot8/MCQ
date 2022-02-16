import 'package:flutter/material.dart';
import 'package:mcq/ui/ui_constants.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: UiConstants.colorWhite,
  colorScheme: const ColorScheme.light(
      primary: UiConstants.colorPrimary,
      secondary: UiConstants.colorGrey,
      background: UiConstants.colorWhite),
  primaryColor: UiConstants.colorPrimary,
  textTheme: const TextTheme(
      bodyText1: UiConstants.textStyleDefaultText,
      headline1: UiConstants.textStyleDefaultTextTitle),
  inputDecorationTheme: const InputDecorationTheme(
      // border: UiConstants.inoutBorderDefaultTextField,
      // focusedBorder: UiConstants.inoutBorderDefaultTextField,
      // hintStyle: UiConstants.textStyleDefaultTextField
      //     .copyWith(color: UiConstants.colorGrey),
      ),
  tabBarTheme: const TabBarTheme(
      // indicator: UiConstants.boxDecorationDefaultTabBar,
      // labelStyle: UiConstants.textStyleDefaultTextTitle,
      // unselectedLabelStyle: UiConstants.textStyleDefaultTextTitle,
      // unselectedLabelColor: UiConstants.colorGrey,
      // labelPadding: UiConstants.edgeInsetsDefaultPadding
      ),
  appBarTheme: const AppBarTheme(
      backgroundColor: UiConstants.colorPrimary,
      titleTextStyle: UiConstants.textStyleDefaultTextTitle2,
      iconTheme: IconThemeData(color: UiConstants.colorWhite)),
  dividerColor: UiConstants.colorGrey,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      // elevation: UiConstants.elevationDefaultTextButton,
      backgroundColor: UiConstants.colorPrimary,
      shape: UiConstants.outlinedBorderDefaultTextButton,
      textStyle: UiConstants.textStyleDefaultTextTitle,
      primary: UiConstants.colorWhite,
      // minimumSize: UiConstants.sizeMinimumTextButton,
      // padding: UiConstants.edgeInsetsDefaultPaddingTextButton
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: UiConstants.colorWhite,
    // shape: UiConstants.outlinedBorderDefaultBottomSheet
  ),
);
