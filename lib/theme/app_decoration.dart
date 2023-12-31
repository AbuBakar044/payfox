import 'package:flutter/material.dart';
import 'package:abu_s_application3/core/app_export.dart';

class AppDecoration {
  // Back decorations
  static BoxDecoration get back => BoxDecoration(
        color: appTheme.gray90015,
      );

  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue100,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90003,
      );
  static BoxDecoration get fillBluegray30019 => BoxDecoration(
        color: appTheme.blueGray30019,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan500,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50,
      );
  static BoxDecoration get fillDeepOrangeA => BoxDecoration(
        color: appTheme.deepOrangeA400,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple100,
      );
  static BoxDecoration get fillDeeporange100 => BoxDecoration(
        color: appTheme.deepOrange100,
      );
  static BoxDecoration get fillDeeppurple10001 => BoxDecoration(
        color: appTheme.deepPurple10001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90023,
      );
  static BoxDecoration get fillGray80003 => BoxDecoration(
        color: appTheme.gray80003,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get fillGray90001 => BoxDecoration(
        color: appTheme.gray90001,
      );
  static BoxDecoration get fillGray90002 => BoxDecoration(
        color: appTheme.gray90002,
      );
  static BoxDecoration get fillGray90004 => BoxDecoration(
        color: appTheme.gray90004,
      );
  static BoxDecoration get fillGray90005 => BoxDecoration(
        color: appTheme.gray90005,
      );
  static BoxDecoration get fillGray900051 => BoxDecoration(
        color: appTheme.gray90005.withOpacity(0.5),
      );
  static BoxDecoration get fillGray90008 => BoxDecoration(
        color: appTheme.gray90008,
      );
  static BoxDecoration get fillGray90009 => BoxDecoration(
        color: appTheme.gray90009,
      );
  static BoxDecoration get fillGray90010 => BoxDecoration(
        color: appTheme.gray90010,
      );
  static BoxDecoration get fillGray90011 => BoxDecoration(
        color: appTheme.gray90011,
      );
  static BoxDecoration get fillGray90013 => BoxDecoration(
        color: appTheme.gray90013,
      );
  static BoxDecoration get fillGray90017 => BoxDecoration(
        color: appTheme.gray90017,
      );
  static BoxDecoration get fillGray90018 => BoxDecoration(
        color: appTheme.gray90018,
      );
  static BoxDecoration get fillGray90019 => BoxDecoration(
        color: appTheme.gray90019,
      );
  static BoxDecoration get fillGray90021 => BoxDecoration(
        color: appTheme.gray90021,
      );
  static BoxDecoration get fillGray90024 => BoxDecoration(
        color: appTheme.gray90024,
      );
  static BoxDecoration get fillGray90025 => BoxDecoration(
        color: appTheme.gray90025,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo10001,
      );
  static BoxDecoration get fillIndigo100 => BoxDecoration(
        color: appTheme.indigo100,
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen100,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange100,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple100,
      );
  static BoxDecoration get fillPurple300 => BoxDecoration(
        color: appTheme.purple300,
      );
  static BoxDecoration get fillPurple50 => BoxDecoration(
        color: appTheme.purple50,
      );
  static BoxDecoration get fillRedB => BoxDecoration(
        color: appTheme.red100B2,
      );

  // Gradient decorations
  static BoxDecoration get gradientAmberAToAmberA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.17, -0.66),
          end: Alignment(0.66, 2.47),
          colors: [
            appTheme.amberA400,
            appTheme.amberA700,
          ],
        ),
      );
  static BoxDecoration get gradientOrangeToAmber => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.06, 0.03),
          end: Alignment(1.58, 2.46),
          colors: [
            appTheme.orange600,
            appTheme.red900,
            appTheme.amber70001,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToBlueA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.15, -1.81),
          end: Alignment(0.9, 21.1),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueA70089,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToDeepOrangeA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.89, 0.05),
          end: Alignment(0.22, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(0.57),
            appTheme.deepOrangeA200.withOpacity(0.56),
          ],
        ),
      );
  static BoxDecoration get gradientPurpleToBlueA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.31, -0.93),
          end: Alignment(2.76, 3.56),
          colors: [
            appTheme.purple800,
            appTheme.blueA70089,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.blueGray90005,
      );
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack90001 => BoxDecoration();
  static BoxDecoration get outlineBlack900011 => BoxDecoration();
  static BoxDecoration get outlineBlack900012 => BoxDecoration(
        color: appTheme.gray90009,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.blueGray90007,
        border: Border.all(
          color: appTheme.blueGray90007,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeepPurpleA => BoxDecoration();
  static BoxDecoration get outlineErrorContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.errorContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray90009,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray20001 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray20001,
          width: 5.h,
        ),
      );
  static BoxDecoration get outlineGray80006 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray80006,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray90001 => BoxDecoration();
  static BoxDecoration get outlineGray90009 => BoxDecoration();
  static BoxDecoration get outlineGray900091 => BoxDecoration();
  static BoxDecoration get outlineGray90012 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray90012,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray90023 => BoxDecoration(
        color: appTheme.gray90005.withOpacity(0.5),
        border: Border.all(
          color: appTheme.gray90023,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray900231 => BoxDecoration(
        color: appTheme.gray90015,
        border: Border.all(
          color: appTheme.gray90023,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray900232 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray90023,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray900233 => BoxDecoration(
        color: appTheme.gray90007,
        border: Border.all(
          color: appTheme.gray90023,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray90028 => BoxDecoration();
  static BoxDecoration get outlineGray900281 => BoxDecoration();
  static BoxDecoration get outline1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get outline2 => BoxDecoration(
        color: appTheme.gray90025,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get circleBorder26 => BorderRadius.circular(
        26.h,
      );
  static BorderRadius get circleBorder42 => BorderRadius.circular(
        42.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL7 => BorderRadius.vertical(
        bottom: Radius.circular(7.h),
      );
  static BorderRadius get customBorderTL15 => BorderRadius.only(
        topLeft: Radius.circular(15.h),
        topRight: Radius.circular(15.h),
        bottomLeft: Radius.circular(10.h),
        bottomRight: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL5 => BorderRadius.vertical(
        top: Radius.circular(5.h),
      );
  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        top: Radius.circular(8.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder35 => BorderRadius.circular(
        35.h,
      );
  static BorderRadius get roundedBorder49 => BorderRadius.circular(
        49.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder54 => BorderRadius.circular(
        54.h,
      );
  static BorderRadius get roundedBorder98 => BorderRadius.circular(
        98.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    