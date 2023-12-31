import 'controller/bnpl_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BnplOneScreen extends GetWidget<BnplOneController> {
  const BnplOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20.h,
            top: 75.v,
            right: 20.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 117.v,
                width: 210.h,
              ),
              SizedBox(height: 47.v),
              Text(
                "msg_your_order_is_being".tr,
                style: CustomTextStyles.titleMediumBold17,
              ),
              SizedBox(height: 18.v),
              Container(
                width: 286.h,
                margin: EdgeInsets.symmetric(horizontal: 33.h),
                child: Text(
                  "msg_your_bnpl_order".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeBluegray10007_1.copyWith(
                    height: 1.31,
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                text: "msg_continue_banking".tr,
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
      height: 54.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_buy_now_pay_later".tr,
      ),
    );
  }
}
