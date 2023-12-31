import 'controller/rate_app_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:abu_s_application3/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class RateAppDialog extends StatelessWidget {
  RateAppDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  RateAppController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildWriteReviewSection(),
    );
  }

  /// Section Widget
  Widget _buildWriteReviewSection() {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 223.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 37.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_rate_app".tr,
            style: CustomTextStyles.titleSmallGray20001Bold,
          ),
          SizedBox(height: 23.v),
          Container(
            width: 256.h,
            margin: EdgeInsets.only(
              left: 12.h,
              right: 19.h,
            ),
            child: Text(
              "msg_how_has_been_your".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallGray20003,
            ),
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Column(
                  children: [
                    Container(
                      height: 37.v,
                      width: 48.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 5.v,
                      ),
                      decoration: AppDecoration.fillPurple50.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgThumbsup22x22,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "lbl_awesome".tr,
                      style: CustomTextStyles.labelLargeGray20003,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.h),
                child: Column(
                  children: [
                    CustomIconButton(
                      height: 37.v,
                      width: 48.h,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.fillPurpleTL3,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgThumbsup22x22,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "lbl_not_helpful".tr,
                      style: CustomTextStyles.labelLargeGray20003,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 34.v),
          CustomElevatedButton(
            height: 40.v,
            text: "lbl_write_review".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
          ),
          SizedBox(height: 12.v),
          OutlineGradientButton(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 1.v,
              right: 1.h,
              bottom: 1.v,
            ),
            strokeWidth: 1.h,
            gradient: LinearGradient(
              begin: Alignment(0.15, -1.81),
              end: Alignment(0.9, 21.1),
              colors: [
                theme.colorScheme.primary,
                appTheme.blueA70089,
              ],
            ),
            corners: Corners(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: CustomOutlinedButton(
              height: 40.v,
              text: "lbl_later".tr,
              buttonStyle: CustomButtonStyles.outline,
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
