import 'package:flutter/material.dart';

class UiConstants {
  static const Color colorPrimary = Color(0xff0C3A69);
  static const Color colorBlack = Colors.black;
  static const Color colorWhite = Colors.white;
  static const Color colorless = Colors.transparent;
  static const Color colorGrey = Colors.grey;
  static const Color colorLightGrey = Color(0xffeeeeee);

  static const TextStyle textStyleDefaultText =
      TextStyle(color: colorBlack, fontFamily: 'WorkSans');
  static const TextStyle textStyleHomeSearchTitle = TextStyle(
      color: colorBlack,
      fontSize: 30.0,
      fontFamily: 'WorkSans',
      fontWeight: FontWeight.w500);
  static const TextStyle textStyleDefaultTextTitle = TextStyle(
      color: colorBlack,
      fontSize: 16.0,
      fontFamily: 'WorkSans',
      fontWeight: FontWeight.bold);
  static const TextStyle textStyleDefaultTextTitle2 = TextStyle(
      color: colorWhite,
      fontSize: 16.0,
      fontFamily: 'WorkSans',
      fontWeight: FontWeight.bold);
  static const TextStyle textStyleDefaultSubtitle = TextStyle(
      color: colorGrey,
      fontSize: 12.0,
      fontFamily: 'WorkSans',
      fontWeight: FontWeight.bold);
  static const TextStyle textStyleDefaultTextField = TextStyle(
      color: colorPrimary, fontFamily: 'WorkSans', fontWeight: FontWeight.w600);
  static const TextStyle textStyleDefaultButtonText = TextStyle(
      color: colorPrimary, fontFamily: 'WorkSans', fontWeight: FontWeight.bold);

  static const InputBorder inoutBorderDefaultTextField = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
    borderSide: BorderSide(
      color: colorGrey,
      width: 1.0,
    ),
  );

  static const BoxDecoration boxDecorationDefaultTabBar = BoxDecoration(
      color: colorPrimary,
      borderRadius: BorderRadius.all(Radius.circular(50.0)));

  static const OutlinedBorder outlinedBorderDefaultTextButton =
      RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)));
  static const OutlinedBorder outlinedBorderDefaultBottomSheet =
      RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: radiusDefaultBottomSheetCorners,
              topRight: radiusDefaultBottomSheetCorners));

  static const Radius radiusDefaultBottomSheetCorners = Radius.circular(20.0);

  static const EdgeInsets edgeInsetsDefaultPadding = EdgeInsets.all(8.0);
  static const EdgeInsets edgeInsetsDefaultPaddingTextButton =
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0);

  static const Size sizeMinimumTextButton = Size(100.0, 42.0);

  static const double elevationDefaultTextButton = 8.0;
  static const double elevationDefaultWhiteAppBar = 0.0;

  static const String stringEmpty = '';
  static const String stringExclamationMark = '!';
}
