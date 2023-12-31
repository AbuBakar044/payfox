import 'controller/tickets_two_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TicketsTwoScreen extends GetWidget<TicketsTwoController> {
  const TicketsTwoScreen({Key? key})
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
          padding: EdgeInsets.only(
            left: 20.h,
            top: 72.v,
            right: 20.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 117.v,
                width: 210.h,
              ),
              SizedBox(height: 46.v),
              Text(
                "msg_payment_successful".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 17.v),
              Container(
                width: 285.h,
                margin: EdgeInsets.only(
                  left: 33.h,
                  right: 34.h,
                ),
                child: Text(
                  "msg_your_payment_has2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeBluegray10007_1.copyWith(
                    height: 1.31,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                text: "msg_view_active_tickets".tr,
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
