import '../models/chipviewframe_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewframeItemWidget extends StatelessWidget {
  ChipviewframeItemWidget(
    this.chipviewframeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChipviewframeItemModel chipviewframeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewframeItemModelObj.seatavailable!.value,
          style: TextStyle(
            color: (chipviewframeItemModelObj.isSelected?.value ?? false)
                ? theme.colorScheme.onPrimary.withOpacity(1)
                : theme.colorScheme.onPrimary.withOpacity(0.6),
            fontSize: 15.fSize,
            fontFamily: 'Niramit',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: (chipviewframeItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray90015,
        selectedColor: appTheme.amber700,
        shape: (chipviewframeItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              ),
        onSelected: (value) {
          chipviewframeItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
