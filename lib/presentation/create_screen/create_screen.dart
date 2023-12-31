import 'controller/create_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreateScreen extends GetWidget<CreateController> {
  const CreateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 54.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1000004055,
                height: 120.adaptSize,
                width: 120.adaptSize,
              ),
              SizedBox(height: 25.v),
              Text(
                "msg_qr_code_generated".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 17.v),
              Text(
                "msg_your_withdraw_has".tr,
                style: CustomTextStyles.labelLargeBluegray10007_1,
              ),
              SizedBox(height: 56.v),
              CustomElevatedButton(
                text: "lbl_proceed".tr,
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
        text: "msg_generate_qr_code".tr,
      ),
    );
  }
}
