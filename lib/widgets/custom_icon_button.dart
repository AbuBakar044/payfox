import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.gray80004,
                  borderRadius: BorderRadius.circular(16.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray800,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple100,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(27.h),
        border: Border.all(
          color: appTheme.gray50002,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGrayTL18 => BoxDecoration(
        color: appTheme.gray90014,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillGrayTL11 => BoxDecoration(
        color: appTheme.gray80003,
        borderRadius: BorderRadius.circular(11.h),
      );
  static BoxDecoration get fillPurpleTL3 => BoxDecoration(
        color: appTheme.purple50,
        borderRadius: BorderRadius.circular(3.h),
      );
  static BoxDecoration get fillGrayTL24 => BoxDecoration(
        color: appTheme.gray90003,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get gradientRedToRed => BoxDecoration(
        borderRadius: BorderRadius.circular(15.h),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 2.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.red500,
            appTheme.red700,
          ],
        ),
      );
}
