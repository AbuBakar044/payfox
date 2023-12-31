import 'controller/change_pin_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChangePinScreen extends GetWidget<ChangePinController> {
  const ChangePinScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 22.v,
          ),
          child: Column(
            children: [
              _buildOldTransaction(),
              SizedBox(height: 17.v),
              _buildNewTransaction(),
              SizedBox(height: 17.v),
              _buildConfirmNewTransaction(),
              SizedBox(height: 36.v),
              CustomElevatedButton(
                text: "lbl_confirm2".tr,
              ),
              SizedBox(height: 5.v),
            ],
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
        text: "lbl_change_pin".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildOldTransaction() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_old_transaction".tr,
            style: CustomTextStyles.labelLargeSemiBold12,
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: controller.enternewtransactionpinvalueController,
            hintText: "msg_enter_old_transaction".tr,
            hintStyle: CustomTextStyles.labelLargeGray50001,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 18.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewTransaction() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_new_transaction".tr,
            style: CustomTextStyles.labelLargeSemiBold12,
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: controller.enternewtransactionpinvalueController1,
            hintText: "msg_enter_new_transaction".tr,
            hintStyle: CustomTextStyles.labelLargeGray50001,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 18.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmNewTransaction() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_confirm_new_transaction".tr,
            style: CustomTextStyles.labelLargeSemiBold12,
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: controller.enternewtransactionpinvalueController2,
            hintText: "msg_enter_new_transaction".tr,
            hintStyle: CustomTextStyles.labelLargeGray50001,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 18.v,
            ),
          ),
        ],
      ),
    );
  }
}
