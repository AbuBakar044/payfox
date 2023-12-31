import 'controller/tickets_three_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TicketsThreeScreen extends GetWidget<TicketsThreeController> {
  const TicketsThreeScreen({Key? key})
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
            vertical: 52.v,
          ),
          child: Column(
            children: [
              Container(
                height: 99.adaptSize,
                width: 99.adaptSize,
                padding: EdgeInsets.all(17.h),
                decoration: AppDecoration.fillBluegray30019.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder49,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgHdTickets49020,
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 25.v),
              Text(
                "msg_no_purchased_tickets".tr,
                style: CustomTextStyles.titleMediumBold17,
              ),
              SizedBox(height: 12.v),
              Text(
                "msg_purchase_a_new_ticket".tr,
                style: CustomTextStyles.labelLargeBluegray1000712,
              ),
              SizedBox(height: 39.v),
              CustomElevatedButton(
                text: "msg_purchase_tickets".tr,
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
        text: "lbl_tickets".tr,
      ),
    );
  }
}
