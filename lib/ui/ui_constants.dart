import 'package:flutter/material.dart';

class UiConstants {
  static const Color colorPrimary = Color(0xff3E77F7);
  static const Color colorBlack = Colors.black;
  static const Color colorWhite = Colors.white;
  static const Color colorGrey = Colors.grey;
  static const Color colorDarkGrey = Color(0xff616161);
  static const Color colorless = Colors.transparent;
  static const Color colorLightGrey = Color(0xffE5E5E5);
  static const Color colorRed = Colors.red;

  static const TextStyle textStyleDefaultText =
      TextStyle(fontFamily: 'PTSans', color: colorBlack);
  static const TextStyle textStyleDefaultText2 = TextStyle(
      fontFamily: 'PTSans', color: colorWhite, fontWeight: FontWeight.bold);
  static const TextStyle textStyleSplashTitle = TextStyle(
      color: colorBlack,
      fontSize: 30.0,
      fontFamily: 'PTSans',
      fontWeight: FontWeight.w500);
  static const TextStyle textStyleDefaultTextTitle =
      TextStyle(color: colorBlack, fontSize: 16.0, fontFamily: 'PTSans');
  static const TextStyle textStyleDefaultTextTitle2 =
      TextStyle(color: colorBlack, fontSize: 24.0, fontFamily: 'PTSans');
  static const TextStyle textStyleDefaultAlertTextTitle = TextStyle(
      color: colorBlack,
      fontSize: 22.0,
      fontFamily: 'PTSans',
      fontWeight: FontWeight.bold);
  static const TextStyle textStyleDefaultTextSubTitle =
      TextStyle(color: colorBlack, fontSize: 12.0, fontFamily: 'PTSans');
  static const TextStyle textStyleDefaultTextSubTitle2 =
      TextStyle(color: colorGrey, fontSize: 12.0, fontFamily: 'PTSans');
  static const TextStyle textStyleDefaultButton = TextStyle(
      color: colorBlack, fontFamily: 'PTSans', fontWeight: FontWeight.bold);
  static const TextStyle textStyleDefaultOutlinedButton = TextStyle(
      color: colorPrimary, fontFamily: 'PTSans', fontWeight: FontWeight.bold);
  // static const TextStyle textStyleDefaultTextField = TextStyle(
  //     color: colorPrimary, fontFamily: 'WorkSans', fontWeight: FontWeight.w600);

  // static const InputBorder inoutBorderDefaultTextField = OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(30.0)),
  //   borderSide: BorderSide(
  //     color: colorGrey,
  //     width: 1.0,
  //   ),
  // );

  // static const BoxDecoration boxDecorationDefaultTabBar = BoxDecoration(
  //     color: colorPrimary,
  //     borderRadius: BorderRadius.all(Radius.circular(50.0)));

  static const OutlinedBorder outlinedBorderDefaultTextButton =
      RoundedRectangleBorder(
          borderRadius: BorderRadius.all(radiusDefaultCorners));
  static const OutlinedBorder outlinedBorderDefaultOutlinedButton =
      RoundedRectangleBorder(
          borderRadius: BorderRadius.all(radiusDefaultCorners));
  // static const OutlinedBorder outlinedBorderDefaultBottomSheet =
  // RoundedRectangleBorder(
  //     borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)));

  static const BorderRadius borderRadiusRoundCorner =
      BorderRadius.all(Radius.circular(100.0));

  static const Radius radiusDefaultCorners = Radius.circular(12.0);

  static const InputDecoration inputDecorationDefaultTextField =
      InputDecoration();

  static const BorderSide borderSideDefaultOutlinedButton =
      BorderSide(color: colorPrimary, width: 2.0);

  // static const EdgeInsets edgeInsetsDefaultPadding = EdgeInsets.all(8.0);
  static const EdgeInsets edgeInsetsDefaultPaddingButton =
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0);

  static const Size sizeMinimumButton = Size(100.0, 42.0);

  static const Duration durationPinFieldAnimation = Duration(milliseconds: 300);

  static const String stringEmpty = '';
  static const String stringSpace = ' ';
  static const String stringExclamationMark = '!';
  static const String stringQuestionMark = '?';
  static const String stringSlashSymbol = '/';
  static const String stringColonSymbol = ':';
  static const String stringNewLine = '\n';
  static const String stringLeftCurleyBrace = '{';
  static const String stringRightCurleyBrace = '}';
  static const String stringDefaultProfileImagePath =
      'assets/images/default_user.png';
  static const String stringDefaultSchoolImagePath =
      'assets/images/default_school_image.png';
  static const String stringCongratulationsImagePath =
      'assets/images/congratulations_image.png';

  static const double elevationDefaultAppBar = 0.0;
  // static const double elevationDefaultTextButton = 8.0;
  // static const double elevationDefaultOutlinedButton = 8.0;

  static const bool appBarCenterTitleStatus = true;
}
