import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargeOnPrimary18 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargeOpenSansOnPrimary =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMedium14_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumABeeZee => theme.textTheme.bodyMedium!.aBeeZee;
  static get bodyMediumAmberA400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.amberA400,
      );
  static get bodyMediumArchivoBlackGray20001 =>
      theme.textTheme.bodyMedium!.archivoBlack.copyWith(
        color: appTheme.gray20001,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 15.fSize,
      );
  static get bodyMediumBluegray10009 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray10009,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyMediumGray20001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray20001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray20002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray20002,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray2000214 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray20002,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray30002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray30002,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray40002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40002,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray40011 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40011,
      );
  static get bodyMediumGray50005 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50005,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 14.fSize,
      );
  static get bodyMediumNiramitOnPrimary =>
      theme.textTheme.bodyMedium!.niramit.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.9),
      );
  static get bodyMediumOnPrimary14 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.65),
        fontSize: 14.fSize,
      );
  static get bodyMediumOnPrimary15 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.85),
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimary15_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.85),
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimary15_2 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.65),
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.65),
      );
  static get bodyMediumPoppinsBluegray40001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsGray30002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray30002,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsGray50005 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray50005,
      );
  static get bodyMediumTealA400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.tealA400,
        fontSize: 14.fSize,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallDeeppurple400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepPurple400,
      );
  static get bodySmallGray20003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray20003,
        fontSize: 12.fSize,
      );
  static get bodySmallGray40003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40003,
        fontSize: 11.fSize,
      );
  static get bodySmallGray40007 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40007,
        fontSize: 10.fSize,
      );
  static get bodySmallGray40010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40010,
        fontSize: 12.fSize,
      );
  static get bodySmallGray50009 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50009,
      );
  static get bodySmallGray70004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70004,
      );
  static get bodySmallGreenA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA700,
        fontSize: 11.fSize,
      );
  static get bodySmallLime500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lime500,
        fontSize: 11.fSize,
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodySmallOnError10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.7),
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimary10_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.65),
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimary11 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.7),
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimary12 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary12_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary12_2 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.65),
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.5),
      );
  // Headline text style
  static get headlineLargeOnPrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get headlineSmallGray20001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray20001,
      );
  static get headlineSmallInter => theme.textTheme.headlineSmall!.inter;
  static get headlineSmallInter25 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontSize: 25.fSize,
      );
  static get headlineSmallInterSemiBold =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallInterSemiBold_1 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallInter_1 => theme.textTheme.headlineSmall!.inter;
  static get headlineSmallInter_2 => theme.textTheme.headlineSmall!.inter;
  static get headlineSmallPoppinsGray20001 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.gray20001,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallPoppinsGray20001Medium =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.gray20001,
        fontWeight: FontWeight.w500,
      );
  // Inter text style
  static get interGray100 => TextStyle(
        color: appTheme.gray100,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static get interGray100Medium => TextStyle(
        color: appTheme.gray100.withOpacity(0.8),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interGray100Medium4 => TextStyle(
        color: appTheme.gray100.withOpacity(0.8),
        fontSize: 4.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interGray100Medium6 => TextStyle(
        color: appTheme.gray100.withOpacity(0.8),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interGray40003 => TextStyle(
        color: appTheme.gray40003,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interGreen800 => TextStyle(
        color: appTheme.green800,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 4.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interOnPrimaryMedium => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interOnPrimaryMedium5 => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interOnPrimaryRegular => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 3.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interOnPrimaryRegular7 => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(0.7),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 90.fSize,
        fontWeight: FontWeight.w800,
      ).inter;
  static get interRedA700 => TextStyle(
        color: appTheme.redA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  // Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeAmber700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amber700,
        fontSize: 12.fSize,
      );
  static get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 12.fSize,
      );
  static get labelLargeBluegray10002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray10002,
        fontSize: 12.fSize,
      );
  static get labelLargeBluegray10007 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray10007,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBluegray1000712 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray10007,
        fontSize: 12.fSize,
      );
  static get labelLargeBluegray10007_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray10007,
      );
  static get labelLargeBluegray10009 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray10009,
      );
  static get labelLargeBluegray10010 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray10010,
        fontSize: 12.fSize,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBold12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDeeporangeA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA400,
        fontSize: 12.fSize,
      );
  static get labelLargeGray200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray200,
        fontSize: 12.fSize,
      );
  static get labelLargeGray20001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray20001,
      );
  static get labelLargeGray20003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray20003,
      );
  static get labelLargeGray20004 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray20004,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray20004_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray20004,
      );
  static get labelLargeGray200_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray200,
      );
  static get labelLargeGray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40001,
        fontSize: 12.fSize,
      );
  static get labelLargeGray40002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40002,
        fontSize: 12.fSize,
      );
  static get labelLargeGray4000212 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40002,
        fontSize: 12.fSize,
      );
  static get labelLargeGray40002_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40002,
      );
  static get labelLargeGray40002_2 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40002,
      );
  static get labelLargeGray40002_3 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40002,
      );
  static get labelLargeGray40009 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40009,
        fontSize: 12.fSize,
      );
  static get labelLargeGray40009_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40009,
      );
  static get labelLargeGray40013 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40013,
      );
  static get labelLargeGray50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get labelLargeGray50006 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50006,
        fontSize: 12.fSize,
      );
  static get labelLargeGray50010 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50010,
      );
  static get labelLargeGray50012 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50012,
        fontSize: 12.fSize,
      );
  static get labelLargeGray60004 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60004,
        fontSize: 12.fSize,
      );
  static get labelLargeOnError => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 12.fSize,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimary12 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.7),
        fontSize: 12.fSize,
      );
  static get labelLargeOnPrimary12_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
        fontSize: 12.fSize,
      );
  static get labelLargeOnPrimary12_2 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.9),
        fontSize: 12.fSize,
      );
  static get labelLargeOnPrimarySemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.65),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimarySemiBold12 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.7),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.7),
      );
  static get labelLargeOnPrimary_2 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.65),
      );
  static get labelLargePoppinsAmber600 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.amber600,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsBluegray10008 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray10008,
        fontSize: 12.fSize,
      );
  static get labelLargePoppinsBluegray1000812 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray10008,
        fontSize: 12.fSize,
      );
  static get labelLargePoppinsGray20001 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray20001,
        fontSize: 12.fSize,
      );
  static get labelLargePoppinsGray20001Bold =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray20001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsGray20001_1 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray20001,
      );
  static get labelLargePoppinsGray300 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray300,
      );
  static get labelLargePoppinsGray50004 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray50004,
        fontSize: 12.fSize,
      );
  static get labelLargePoppinsGray50011 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray50011,
        fontSize: 12.fSize,
      );
  static get labelLargePoppinsGray5001112 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray50011,
        fontSize: 12.fSize,
      );
  static get labelLargePoppinsOnPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.7),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsOnPrimarySemiBold =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRubik => theme.textTheme.labelLarge!.rubik.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLarge_1 => theme.textTheme.labelLarge!;
  static get labelMediumAmber700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.amber700,
      );
  static get labelMediumAmber700Bold => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.amber700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlue10001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blue10001,
      );
  static get labelMediumBluegray100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  static get labelMediumBluegray10004 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray10004,
        fontSize: 10.fSize,
      );
  static get labelMediumBluegray10007 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray10007,
        fontSize: 10.fSize,
      );
  static get labelMediumCyan500 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.cyan500,
      );
  static get labelMediumGray200 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray200,
      );
  static get labelMediumGray20001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray20001,
        fontSize: 10.fSize,
      );
  static get labelMediumGray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get labelMediumGray40013 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray40013,
        fontSize: 10.fSize,
      );
  static get labelMediumGray40014 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray40014,
        fontSize: 10.fSize,
      );
  static get labelMediumGray50008 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50008,
      );
  static get labelMediumGray50b2 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50B2,
      );
  static get labelMediumOnError => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumOnError_1 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimary10 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.7),
        fontSize: 10.fSize,
      );
  static get labelMediumOnPrimary10_1 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get labelMediumOnPrimaryBold => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimary_1 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelMediumOnPrimary_2 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.7),
      );
  static get labelMediumOnPrimary_3 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.8),
      );
  static get labelMediumOnPrimary_4 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
      );
  static get labelMediumPoppinsCyan500 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.cyan500,
        fontSize: 10.fSize,
      );
  static get labelMediumPoppinsGray40005 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray40005,
        fontSize: 10.fSize,
      );
  static get labelMediumPoppinsGray600 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray600,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumYellow100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.yellow100,
        fontSize: 10.fSize,
      );
  static get labelSmallGray100 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray100,
        fontSize: 8.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallGray100Bold => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallOnPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelSmallOnPrimary_1 => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelSmallPoppinsOnPrimary =>
      theme.textTheme.labelSmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 8.fSize,
        fontWeight: FontWeight.w600,
      );
  // Poppins text style
  static get poppinsGray60003 => TextStyle(
        color: appTheme.gray60003,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static get poppinsGray70001 => TextStyle(
        color: appTheme.gray70001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static get poppinsOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static get poppinsOnPrimaryRegular => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumAmberA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.amberA400,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold17_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold19 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.85),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.85),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsGray80002 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray80002,
        fontSize: 18.fSize,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallAmber700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amber700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallAmber700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amber700,
      );
  static get titleSmallAmberA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amberA400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBold15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBold_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray20001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray20001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray20001Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray20001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray20001Bold_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray20001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray30001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray30001,
        fontSize: 15.fSize,
      );
  static get titleSmallGray40008 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40008,
      );
  static get titleSmallGray40012 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40012,
      );
  static get titleSmallNiramit => theme.textTheme.titleSmall!.niramit.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.85),
      );
  static get titleSmallOnPrimarySemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.85),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOpenSansGray40012 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.gray40012,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsBluegray10003 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blueGray10003,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsGray20001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray20001,
      );
  static get titleSmallPoppinsGray20001SemiBold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray20001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsGray20001SemiBold15 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray20001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get niramit {
    return copyWith(
      fontFamily: 'Niramit',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get archivoBlack {
    return copyWith(
      fontFamily: 'Archivo Black',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }
}
