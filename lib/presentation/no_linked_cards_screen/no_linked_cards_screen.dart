import 'controller/no_linked_cards_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NoLinkedCardsScreen extends GetWidget<NoLinkedCardsController> {
  const NoLinkedCardsScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 57.v),
          child: Column(
            children: [
              Container(
                height: 100.adaptSize,
                width: 100.adaptSize,
                padding: EdgeInsets.all(22.h),
                decoration: AppDecoration.fillGray90025.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder49,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCloudslash,
                  height: 55.adaptSize,
                  width: 55.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 13.v),
              Text(
                "lbl_no_linked_cards".tr,
                style: CustomTextStyles.labelLargeBluegray10007_1,
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
      title: AppbarSubtitleOne(
        text: "msg_my_linked_accounts".tr,
        margin: EdgeInsets.only(left: 96.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgPlusOnprimary,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }
}
