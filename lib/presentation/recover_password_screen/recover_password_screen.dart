import 'controller/recover_password_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/core/utils/validation_functions.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RecoverPasswordScreen extends GetWidget<RecoverPasswordController> {
  RecoverPasswordScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 51.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_password_recovery".tr,
                  style: CustomTextStyles.titleLargeRegular,
                ),
                SizedBox(height: 5.v),
                Container(
                  width: 299.h,
                  margin: EdgeInsets.only(right: 53.h),
                  child: Text(
                    "msg_can_t_remember_your".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelLargeGray40002_2,
                  ),
                ),
                SizedBox(height: 36.v),
                _buildPasswordRecoveryFrameNinetyTwo(),
                SizedBox(height: 40.v),
                CustomElevatedButton(
                  height: 56.v,
                  text: "lbl_next".tr,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordRecoveryFrameNinetyTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email_address".tr,
          style: CustomTextStyles.labelLargeSemiBold12,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: controller.emailController,
          hintText: "msg_enter_your_email".tr,
          hintStyle: CustomTextStyles.labelLargeGray50001,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(20.h, 14.v, 8.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettingsAmber700,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 52.v,
          ),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.only(
            top: 18.v,
            right: 12.h,
            bottom: 18.v,
          ),
        ),
      ],
    );
  }
}
