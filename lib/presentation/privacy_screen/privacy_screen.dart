import 'controller/privacy_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PrivacyScreen extends GetWidget<PrivacyController> {
  const PrivacyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: 353.h,
          margin: EdgeInsets.fromLTRB(20.h, 8.v, 20.h, 5.v),
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 29.v,
          ),
          decoration: AppDecoration.back.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 5.v),
              Container(
                width: 314.h,
                margin: EdgeInsets.only(right: 6.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_your_privacy_is2".tr,
                        style: CustomTextStyles.bodyMedium_1,
                      ),
                      TextSpan(
                        text: "lbl_website".tr,
                        style: CustomTextStyles.bodyMediumAmberA400,
                      ),
                      TextSpan(
                        text: "msg_and_other_sites".tr,
                        style: CustomTextStyles.bodyMedium_1.copyWith(
                          height: 1.69,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
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
        text: "lbl_privacy".tr,
      ),
    );
  }
}
