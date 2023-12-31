import 'controller/sign_in_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/core/utils/validation_functions.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 34.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 30.v),
                CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 49.v,
                  width: 44.h,
                ),
                SizedBox(height: 41.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 77.h),
                    child: Text(
                      "lbl_welcome_back".tr,
                      style: CustomTextStyles.headlineSmallInter_1,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "msg_hello_we_are_glad".tr,
                      style: CustomTextStyles.labelLargeGray40002_3,
                    ),
                  ),
                ),
                Spacer(),
                _buildEmailSection(),
                SizedBox(height: 16.v),
                _buildPasswordSection(),
                SizedBox(height: 38.v),
                _buildSignInButtonSection(),
                SizedBox(height: 60.v),
                _buildFrameNineSection(),
                SizedBox(height: 18.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      child: CustomIconButton(
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        padding: EdgeInsets.all(3.h),
                        decoration: IconButtonStyleHelper.outlineGray,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 3.v,
                        bottom: 3.v,
                      ),
                      child: CustomIconButton(
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.outlineGray,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup13,
                        ),
                      ),
                    ),
                    Container(
                      height: 62.adaptSize,
                      width: 62.adaptSize,
                      margin: EdgeInsets.only(left: 20.h),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomIconButton(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            alignment: Alignment.center,
                            child: CustomImageView(),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFacebookLogoF,
                            height: 62.adaptSize,
                            width: 62.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_don_t_have_an_account2".tr,
                        style: CustomTextStyles.bodyMediumGray20001,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_sign_up".tr,
                        style: CustomTextStyles.titleSmallAmber700,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection() {
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
            hintText: "msg_enter_your_password".tr,
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
  Widget _buildSignInButtonSection() {
    return SizedBox(
      height: 56.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 52.v,
              width: 353.h,
              decoration: BoxDecoration(),
            ),
          ),
          CustomElevatedButton(
            height: 56.v,
            width: 353.h,
            text: "lbl_sign_in".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToBlueATL28Decoration,
            buttonTextStyle: CustomTextStyles.titleSmallBold,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNineSection() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 9.v,
            ),
            child: SizedBox(
              width: 87.h,
              child: Divider(
                color: appTheme.gray20005,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "lbl_or_sign_up_with".tr,
              style: CustomTextStyles.bodyMediumGray40002,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 9.v,
            ),
            child: SizedBox(
              width: 118.h,
              child: Divider(
                color: appTheme.gray20005,
                indent: 12.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
