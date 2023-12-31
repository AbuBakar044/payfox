import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    Key? key,
    this.alignment,
    this.width,
    this.focusNode,
    this.icon,
    this.autofocus = true,
    this.textStyle,
    this.items,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final FocusNode? focusNode;

  final Widget? icon;

  final bool? autofocus;

  final TextStyle? textStyle;

  final List<SelectionPopupModel>? items;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<SelectionPopupModel>? validator;

  final Function(SelectionPopupModel)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: dropDownWidget,
          )
        : dropDownWidget;
  }

  Widget get dropDownWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: DropdownButtonFormField<SelectionPopupModel>(
          focusNode: focusNode ?? FocusNode(),
          icon: icon,
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.labelLargeGray50001,
          items: items?.map((SelectionPopupModel item) {
            return DropdownMenuItem<SelectionPopupModel>(
              value: item,
              child: Text(
                item.title,
                overflow: TextOverflow.ellipsis,
                style: hintStyle ?? CustomTextStyles.labelLarge12,
              ),
            );
          }).toList(),
          decoration: decoration,
          validator: validator,
          onChanged: (value) {
            onChanged!(value!);
          },
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.labelLarge12,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.all(3.h),
        fillColor: fillColor ?? appTheme.gray90015,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(26.h),
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(26.h),
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.h),
              borderSide: BorderSide(
                color: theme.colorScheme.errorContainer,
                width: 1,
              ),
            ),
      );
}

/// Extension on [CustomDropDown] to facilitate inclusion of all types of border style etc
extension DropDownStyleHelper on CustomDropDown {
  static UnderlineInputBorder get underLineOnPrimary => UnderlineInputBorder(
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimary.withOpacity(0.6),
        ),
      );
  static OutlineInputBorder get fillGrayTL4 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillGrayTL2 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(2.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillBlueGray => OutlineInputBorder(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(
            10.h,
          ),
        ),
        borderSide: BorderSide.none,
      );
}
