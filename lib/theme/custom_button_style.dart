import 'dart:ui';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillAmber => ElevatedButton.styleFrom(
        backgroundColor: appTheme.amber700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray80001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );
  static ButtonStyle get fillOnPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL10 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL16 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL20 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillPurple => ElevatedButton.styleFrom(
        backgroundColor: appTheme.purple300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientPrimaryToBlueADecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        gradient: LinearGradient(
          begin: Alignment(0.15, -1),
          end: Alignment(0.9, 21),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueA70089,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToBlueATL20Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        gradient: LinearGradient(
          begin: Alignment(0.15, -1),
          end: Alignment(0.9, 21),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueA70089,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToBlueATL28Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(28.h),
        gradient: LinearGradient(
          begin: Alignment(0.15, -1),
          end: Alignment(0.9, 21),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueA70089,
          ],
        ),
      );
  static BoxDecoration get gradientPurpleToBlueADecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.15, -1),
          end: Alignment(0.9, 21),
          colors: [
            appTheme.purple80001,
            appTheme.blueA70089,
          ],
        ),
      );
  static BoxDecoration
      get gradientSecondaryContainerToSecondaryContainerDecoration =>
          BoxDecoration(
            borderRadius: BorderRadius.circular(10.h),
            gradient: LinearGradient(
              begin: Alignment(0.0, 0),
              end: Alignment(1.0, 1),
              colors: [
                theme.colorScheme.secondaryContainer.withOpacity(1),
                theme.colorScheme.secondaryContainer,
              ],
            ),
          );

  // Outline button style
  static ButtonStyle get outline => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
