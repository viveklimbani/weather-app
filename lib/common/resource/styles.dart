import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimen.dart';

const poppinsFamily = "Poppins";

class TextStyles {
  static const String defaultFontFamily = poppinsFamily;

  static const regularTextStyle = TextStyle(
      fontSize: TextSize.normal,
      fontFamily: defaultFontFamily,
      fontWeight: FontWeight.w400,
      color: WAColors.textColor);

  static const textFieldStyle = TextStyle(
      fontSize: TextSize.large,
      fontFamily: defaultFontFamily,
      fontWeight: FontWeight.w400,
      color: WAColors.textColor);

  static const buttonTextStyle = TextStyle(
      fontSize: TextSize.normal,
      fontFamily: defaultFontFamily,
      fontWeight: FontWeight.w400,
      color: WAColors.textColor);

  ///Regular styles
  static const _small = TextStyle(
    fontSize: TextSize.small,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.w400,
    color: WAColors.textColor,
  );
  static const _xSmall = TextStyle(
    fontSize: TextSize.xSmall,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.w400,
    color: WAColors.textColor,
  );

  static const _xxSmall = TextStyle(
    fontSize: TextSize.xxSmall,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.w400,
    color: WAColors.textColor,
  );

  static const _normal = TextStyle(
    fontSize: TextSize.normal,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.w400,
    color: WAColors.textColor,
  );

  static const _normal15 = TextStyle(
    fontSize: TextSize.normal,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.w400,
    color: WAColors.textColor,
  );

  static const _large = TextStyle(
    fontSize: TextSize.large,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.w400,
    color: WAColors.textColor,
  );

  static const _xlarge = TextStyle(
    fontSize: TextSize.xlarge,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.w400,
    color: WAColors.textColor,
  );

  static const _xxLarge = TextStyle(
    fontSize: TextSize.xxLarge,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.w400,
    color: WAColors.textColor,
  );

  static const _xxxLarge = TextStyle(
    fontSize: TextSize.xxxLarge,
    fontFamily: defaultFontFamily,
    fontWeight: FontWeight.w400,
    color: WAColors.textColor,
  );

  static TextStyle get small => _small;

  static TextStyle get xSmall => _xSmall;

  static TextStyle get xxSmall => _xxSmall;

  static TextStyle get normal => _normal;

  static TextStyle get normal15 => _normal15;

  static TextStyle get large => _large;

  static TextStyle get xLarge => _xlarge;

  static TextStyle get xxLarge => _xxLarge;

  static TextStyle get xxxLarge => _xxxLarge;
}

class AppTheme {
  var appTheme = ThemeData(
    primaryColor: WAColors.primary,
    primaryColorDark: WAColors.primary,
    buttonTheme: const ButtonThemeData(buttonColor: WAColors.themeColor),
    canvasColor: WAColors.whiteColor,
    hintColor: WAColors.hintColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: WAColors.textColor,
    ),
  );
}
