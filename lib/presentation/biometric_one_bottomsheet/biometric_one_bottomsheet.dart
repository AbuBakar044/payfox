import 'controller/biometric_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class BiometricOneBottomsheet extends StatelessWidget {
  BiometricOneBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  BiometricOneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 93.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftGray90005,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 62.h,
                      top: 6.v,
                      bottom: 8.v,
                    ),
                    child: Text(
                      "msg_biometric_authentication".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 28.v),
          Container(
            height: 109.adaptSize,
            width: 109.adaptSize,
            padding: EdgeInsets.all(22.h),
            decoration: AppDecoration.fillGray90017.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder54,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgFingerprint,
              height: 64.adaptSize,
              width: 64.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 22.v),
          SizedBox(
            width: 233.h,
            child: Text(
              "msg_login_and_authorize".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge!.copyWith(
                height: 1.08,
              ),
            ),
          ),
          SizedBox(height: 38.v),
          CustomElevatedButton(
            text: "lbl_proceed".tr,
          ),
          SizedBox(height: 44.v),
        ],
      ),
    );
  }
}
