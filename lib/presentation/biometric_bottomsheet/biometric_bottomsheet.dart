import 'controller/biometric_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class BiometricBottomsheet extends StatelessWidget {
  BiometricBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  BiometricController controller;

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
          SizedBox(height: 48.v),
          _buildTransactionPinSection(),
          SizedBox(height: 40.v),
          CustomElevatedButton(
            text: "lbl_confirm2".tr,
          ),
          SizedBox(height: 50.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionPinSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_enter_your_transaction".tr,
          style: CustomTextStyles.labelLargeSemiBold12,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: controller.transactionPinController,
          hintText: "lbl_transaction_pin".tr,
          hintStyle: CustomTextStyles.labelLargeGray50001,
          textInputAction: TextInputAction.done,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 52.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 20.h,
            top: 18.v,
            bottom: 18.v,
          ),
        ),
      ],
    );
  }
}
