import 'controller/my_profile_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/core/utils/validation_functions.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyProfileScreen extends GetWidget<MyProfileController> {
  MyProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 25.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 72.v,
                  width: 71.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img5971x71,
                        height: 71.adaptSize,
                        width: 71.adaptSize,
                        radius: BorderRadius.circular(
                          35.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: CustomIconButton(
                          height: 21.adaptSize,
                          width: 21.adaptSize,
                          padding: EdgeInsets.all(5.h),
                          decoration: IconButtonStyleHelper.fillBlueGray,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCamera,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                Text(
                  "lbl_sarah_wegan".tr,
                  style: CustomTextStyles.bodyMedium15,
                ),
                SizedBox(height: 17.v),
                _buildNameColumn(),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "lbl_my_profile2".tr,
        margin: EdgeInsets.only(left: 123.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText() {
    return CustomTextFormField(
      controller: controller.nameEditTextController,
      hintText: "lbl_account_name".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(vertical: 13.v),
      borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildUserNameEditText() {
    return CustomTextFormField(
      controller: controller.userNameEditTextController,
      hintText: "lbl_username".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(vertical: 13.v),
      borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildEmailEditText() {
    return CustomTextFormField(
      controller: controller.emailEditTextController,
      hintText: "lbl_email_address".tr,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(vertical: 14.v),
      borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildMobileNumberEditText() {
    return CustomTextFormField(
      controller: controller.mobileNumberEditTextController,
      hintText: "lbl_mobile_number".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.phone,
      validator: (value) {
        if (!isValidPhone(value)) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(vertical: 14.v),
      borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildNameColumn() {
    return Container(
      margin: EdgeInsets.only(right: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillGray90009.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildNameEditText(),
          SizedBox(height: 11.v),
          _buildUserNameEditText(),
          SizedBox(height: 11.v),
          _buildEmailEditText(),
          SizedBox(height: 10.v),
          _buildMobileNumberEditText(),
          SizedBox(height: 11.v),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_sharon_hannover".tr,
                style: CustomTextStyles.titleSmall15,
              ),
              SizedBox(height: 8.v),
              Text(
                "lbl_next_of_kin".tr,
                style: CustomTextStyles.bodyMediumBluegray400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
