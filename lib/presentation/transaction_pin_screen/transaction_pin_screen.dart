import 'controller/transaction_pin_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/core/utils/validation_functions.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TransactionPinScreen extends GetWidget<TransactionPinController> {
  TransactionPinScreen({Key? key})
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
              horizontal: 20.h,
              vertical: 34.v,
            ),
            child: Column(
              children: [
                _buildFrameNinetyTwo(),
                SizedBox(height: 27.v),
                CustomElevatedButton(
                  text: "lbl_confirm2".tr,
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
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_transaction_pin".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNinetyTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_transaction_pin".tr,
          style: CustomTextStyles.labelLargeSemiBold12,
        ),
        SizedBox(height: 6.v),
        Obx(
          () => CustomTextFormField(
            controller: controller.passwordController,
            hintText: "lbl4".tr,
            hintStyle: CustomTextStyles.labelLargeGray50001,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
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
            contentPadding: EdgeInsets.only(
              left: 20.h,
              top: 18.v,
              bottom: 18.v,
            ),
          ),
        ),
      ],
    );
  }
}
