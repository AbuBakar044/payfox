import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray90023,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.onPrimary.withOpacity(1),
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          color: appTheme.gray70002,
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.deepPurpleA200,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGray90005,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray30001,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 8.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: 40.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: 30.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Archivo Black',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray200.withOpacity(0.85),
          fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.blueGray10007,
          fontSize: 9.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF8B00FF),
    primaryContainer: Color(0XFFACABAB),
    secondaryContainer: Color(0X008F00FF),

    // Error colors
    errorContainer: Color(0XFF4F4D4D),
    onError: Color(0XFF2F2F2F),
    onErrorContainer: Color(0XFF0B0B0B),

    // On colors(text colors)
    onPrimary: Color(0XA2FFFFFF),
    onPrimaryContainer: Color(0XFF1C1C1C),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber300 => Color(0XFFFFD05B);
  Color get amber600 => Color(0XFFDAAF01);
  Color get amber700 => Color(0XFFFFA500);
  Color get amber70001 => Color(0XFFFFA501);
  Color get amberA400 => Color(0XFFFFC300);
  Color get amberA700 => Color(0XFFF7A80F);

  // Black
  Color get black900 => Color(0XFF0D0D0D);
  Color get black90001 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFC6DDF3);
  Color get blue10001 => Color(0XFFC7DEFF);
  Color get blue300 => Color(0XFF6995FE);
  Color get blue500 => Color(0XFF30A1D8);
  Color get blue600 => Color(0XFF2080E0);
  Color get blue900 => Color(0XFF0E4595);
  Color get blueA70089 => Color(0X89005AFF);

  // BlueGray
  Color get blueGray100 => Color(0XFFD7D4D4);
  Color get blueGray10001 => Color(0XFFD6D2D2);
  Color get blueGray10002 => Color(0XFFD6D6D6);
  Color get blueGray10003 => Color(0XFFD5D5D5);
  Color get blueGray10004 => Color(0XFFD2D2D2);
  Color get blueGray10005 => Color(0XFFD7D5D9);
  Color get blueGray10006 => Color(0XFFD9D9D9);
  Color get blueGray10007 => Color(0XFFD7D7D7);
  Color get blueGray10008 => Color(0XFFD5D2D2);
  Color get blueGray10009 => Color(0XFFCFCFCF);
  Color get blueGray10010 => Color(0XFFD4D4D4);
  Color get blueGray30019 => Color(0X199E8BB6);
  Color get blueGray400 => Color(0XFF898989);
  Color get blueGray40001 => Color(0XFF8D8D8D);
  Color get blueGray700 => Color(0XFF474B79);
  Color get blueGray800 => Color(0XFF36334E);
  Color get blueGray80001 => Color(0XFF38354B);
  Color get blueGray900 => Color(0XFF303030);
  Color get blueGray90001 => Color(0XFF353535);
  Color get blueGray90002 => Color(0XFF373535);
  Color get blueGray90003 => Color(0XFF333335);
  Color get blueGray90004 => Color(0XFF333333);
  Color get blueGray90005 => Color(0XFF2B2B2B);
  Color get blueGray90006 => Color(0XFF2C2B2B);
  Color get blueGray90007 => Color(0XFF343335);

  // Cyan
  Color get cyan500 => Color(0XFF00C4C0);

  // DeepOrange
  Color get deepOrange100 => Color(0XFFFFBDBD);
  Color get deepOrange50 => Color(0XFFFFEBE4);
  Color get deepOrangeA200 => Color(0XFFF76730);
  Color get deepOrangeA400 => Color(0XFFFF4500);

  // DeepPurple
  Color get deepPurple100 => Color(0XFFDCC2FF);
  Color get deepPurple10001 => Color(0XFFCCA5FB);
  Color get deepPurple400 => Color(0XFF8A6AB2);
  Color get deepPurpleA200 => Color(0XFFA436FF);
  Color get deepPurpleA20001 => Color(0XFFAF4FFF);
  Color get deepPurpleA20019 => Color(0X19A259FF);
  Color get deepPurpleA700 => Color(0XFF6617D4);

  // Gray
  Color get gray100 => Color(0XFFF3F3F3);
  Color get gray200 => Color(0XFFF0EFEF);
  Color get gray20001 => Color(0XFFECECEC);
  Color get gray20002 => Color(0XFFF0F0F0);
  Color get gray20003 => Color(0XFFEBEBEB);
  Color get gray20004 => Color(0XFFEFEFEF);
  Color get gray20005 => Color(0XFFE8E8E8);
  Color get gray300 => Color(0XFFE0E0E0);
  Color get gray30001 => Color(0XFFE4E2E2);
  Color get gray30002 => Color(0XFFDFDADA);
  Color get gray400 => Color(0XFFC1BCBC);
  Color get gray40001 => Color(0XFFAFAEAE);
  Color get gray40002 => Color(0XFFB1B1B1);
  Color get gray40003 => Color(0XFFBDBDBD);
  Color get gray40004 => Color(0XFFB8B8B8);
  Color get gray40005 => Color(0XFFB9B7B7);
  Color get gray40006 => Color(0XFFC0C0C0);
  Color get gray40007 => Color(0XFFB8B5B5);
  Color get gray40008 => Color(0XFFC6C6C6);
  Color get gray40009 => Color(0XFFB0AEAE);
  Color get gray40010 => Color(0XFFC3BEBE);
  Color get gray40011 => Color(0XFFC9C9C9);
  Color get gray40012 => Color(0XFFC7C7C7);
  Color get gray40013 => Color(0XFFBBBBBB);
  Color get gray40014 => Color(0XFFB8B2B2);
  Color get gray40015 => Color(0XFFC3BFBF);
  Color get gray500 => Color(0XFF918B8B);
  Color get gray50001 => Color(0XFF979797);
  Color get gray50002 => Color(0XFFA6A5A5);
  Color get gray50003 => Color(0XFFACACAB);
  Color get gray50004 => Color(0XFFACACAC);
  Color get gray50005 => Color(0XFFA4A4A4);
  Color get gray50006 => Color(0XFF939191);
  Color get gray50007 => Color(0XFF919191);
  Color get gray50008 => Color(0XFFA0A0A0);
  Color get gray50009 => Color(0XFFADADAD);
  Color get gray50010 => Color(0XFFA5A5A5);
  Color get gray50011 => Color(0XFFABACAC);
  Color get gray50012 => Color(0XFF959595);
  Color get gray600 => Color(0XFF848585);
  Color get gray60001 => Color(0XFF747373);
  Color get gray60002 => Color(0XFF717171);
  Color get gray60003 => Color(0XFF848484);
  Color get gray60004 => Color(0XFF6F6F6F);
  Color get gray700 => Color(0XFF696969);
  Color get gray70001 => Color(0XFF6A6868);
  Color get gray70002 => Color(0XFF585B5F);
  Color get gray70003 => Color(0XFF645F5F);
  Color get gray70004 => Color(0XFF5E5E5E);
  Color get gray800 => Color(0XFF393939);
  Color get gray80000 => Color(0X00453E3E);
  Color get gray80001 => Color(0XFF37383A);
  Color get gray80002 => Color(0XFF38393D);
  Color get gray80003 => Color(0XFF4F4F4F);
  Color get gray80004 => Color(0XFF3F3E3E);
  Color get gray80005 => Color(0XFF38383C);
  Color get gray80006 => Color(0XFF3C3B3B);
  Color get gray80007 => Color(0XFF3A3A3C);
  Color get gray900 => Color(0XFF201F1F);
  Color get gray90001 => Color(0XFF272727);
  Color get gray90002 => Color(0XFF171616);
  Color get gray90003 => Color(0XFF131313);
  Color get gray90004 => Color(0XFF222121);
  Color get gray90005 => Color(0XFF1B1C1D);
  Color get gray90006 => Color(0XFF232323);
  Color get gray90007 => Color(0XFF1A1A1A);
  Color get gray90008 => Color(0XFF181818);
  Color get gray90009 => Color(0XFF1E1E1E);
  Color get gray90010 => Color(0XFF121214);
  Color get gray90011 => Color(0XFF121212);
  Color get gray90012 => Color(0XFF262626);
  Color get gray90013 => Color(0XFF131414);
  Color get gray90014 => Color(0XFF292929);
  Color get gray90015 => Color(0XFF1B1B1B);
  Color get gray90016 => Color(0XFF282727);
  Color get gray90017 => Color(0XFF181510);
  Color get gray90018 => Color(0XFF1F1936);
  Color get gray90019 => Color(0XFF202020);
  Color get gray90020 => Color(0XFF111112);
  Color get gray90021 => Color(0XFF242323);
  Color get gray90022 => Color(0XFF2A2A2A);
  Color get gray90023 => Color(0XFF171717);
  Color get gray90024 => Color(0XFF242424);
  Color get gray90025 => Color(0XFF1F1F1F);
  Color get gray90028 => Color(0X281D1D1D);

  // GrayCe
  Color get gray100Ce => Color(0XCEF7F7F7);

  // Graye
  Color get gray505e => Color(0X5EFAFAFA);

  // GrayB
  Color get gray50B2 => Color(0XB2FCFCFC);

  // Green
  Color get green800 => Color(0XFF099517);
  Color get green80001 => Color(0XFF189901);
  Color get green900 => Color(0XFF127700);
  Color get greenA700 => Color(0XFF0DD04E);

  // Indigo
  Color get indigo100 => Color(0XFFBDD3EA);
  Color get indigo10001 => Color(0XFFBCD3E9);
  Color get indigo900 => Color(0XFF27346A);
  Color get indigo90001 => Color(0XFF273569);

  // LightGreen
  Color get lightGreen100 => Color(0XFFDEFFBD);
  Color get lightGreen900 => Color(0XFF168901);
  Color get lightGreenA200 => Color(0XFFADFF2F);

  // Lime
  Color get lime500 => Color(0XFFDDC445);

  // Orange
  Color get orange100 => Color(0XFFEFDDBD);
  Color get orange500 => Color(0XFFF89501);
  Color get orange50001 => Color(0XFFEA9B09);
  Color get orange600 => Color(0XFFE09306);
  Color get orange800 => Color(0XFFDE6E08);

  // Pink
  Color get pink300 => Color(0XFFE943B3);
  Color get pink30001 => Color(0XFFFF3FC0);

  // Purple
  Color get purple100 => Color(0XFFDBB1FF);
  Color get purple300 => Color(0XFFAD59F2);
  Color get purple50 => Color(0XFFF2E3FF);
  Color get purple800 => Color(0XFF6804BC);
  Color get purple80001 => Color(0XFF6809B6);

  // RedB
  Color get red100B2 => Color(0XB2FDD9D9);

  // Red
  Color get red500 => Color(0XFFFF3D3D);
  Color get red700 => Color(0XFFDF2222);
  Color get red900 => Color(0XFF9B220A);
  Color get redA700 => Color(0XFFF50F0F);
  Color get redA70001 => Color(0XFFED0006);
  Color get redA70002 => Color(0XFFE30000);

  // Teal
  Color get teal400 => Color(0XFF25B99A);
  Color get tealA400 => Color(0XFF04EAC1);

  // Yellow
  Color get yellow100 => Color(0XFFFFEFC8);
  Color get yellowA700 => Color(0XFFFBD500);

  // YellowEd
  Color get yellow900Ed => Color(0XEDE18F2A);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();