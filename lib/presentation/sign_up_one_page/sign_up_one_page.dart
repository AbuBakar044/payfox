import 'controller/sign_up_one_controller.dart';
import 'models/sign_up_one_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/core/utils/validation_functions.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpOnePage extends StatelessWidget {
  SignUpOnePage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignUpOneController controller =
      Get.put(SignUpOneController(SignUpOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray90002,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillGray90002,
            child: Column(
              children: [
                SizedBox(height: 36.v),
                _buildConfirmationSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailAddressSection() {
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

  /// Section Widget
  Widget _buildPhoneNumberSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_phone_number".tr,
          style: CustomTextStyles.labelLargeSemiBold12,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: controller.phoneNumberController,
          hintText: "msg_enter_phone_number".tr,
          hintStyle: CustomTextStyles.labelLargeGray50001,
          textInputType: TextInputType.phone,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(20.h, 14.v, 8.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgLocationAmber700,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 52.v,
          ),
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.only(
            top: 18.v,
            right: 30.h,
            bottom: 18.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_password".tr,
          style: CustomTextStyles.labelLargeSemiBold12,
        ),
        SizedBox(height: 7.v),
        Obx(
          () => CustomTextFormField(
            controller: controller.passwordController,
            hintText: "lbl_enter_password".tr,
            hintStyle: CustomTextStyles.labelLargeGray50001,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(20.h, 14.v, 8.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLocationAmber700,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 52.v,
            ),
            suffix: InkWell(
              onTap: () {
                controller.isShowPassword.value =
                    !controller.isShowPassword.value;
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 14.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 52.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: controller.isShowPassword.value,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildConfirmationSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          _buildEmailAddressSection(),
          SizedBox(height: 16.v),
          _buildPhoneNumberSection(),
          SizedBox(height: 17.v),
          _buildPasswordSection(),
          SizedBox(height: 29.v),
          Container(
            decoration: AppDecoration.outlineDeepPurpleA,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 148.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.gradientPrimaryToBlueA.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder26,
              ),
              child: Text(
                "lbl_sign_up".tr,
                style: CustomTextStyles.titleSmallBold,
              ),
            ),
          ),
          SizedBox(height: 56.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_already_have_an2".tr,
                  style: CustomTextStyles.bodyMediumGray20001,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_sign_in".tr,
                  style: CustomTextStyles.titleSmallAmber700,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
