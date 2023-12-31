import 'controller/security_alerts_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SecurityAlertsScreen extends GetWidget<SecurityAlertsController> {
  const SecurityAlertsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          height: 751.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 26.v,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _buildFrameColumn(),
              _buildFrameColumn1(),
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
        text: "lbl_security_alerts".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn() {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildThumbsUp(),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 11.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "lbl_login_alerts".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Obx(
                () => CustomSwitch(
                  margin: EdgeInsets.only(
                    left: 200.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  value: controller.isSelectedSwitch.value,
                  onChange: (value) {
                    controller.isSelectedSwitch.value = value;
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Divider(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1() {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 35.adaptSize,
                width: 35.adaptSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPlay,
                              height: 35.adaptSize,
                              width: 35.adaptSize,
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgClockPurple100,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 11.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "lbl_login_alerts".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Obx(
                () => CustomSwitch(
                  margin: EdgeInsets.only(
                    left: 200.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  value: controller.isSelectedSwitch1.value,
                  onChange: (value) {
                    controller.isSelectedSwitch1.value = value;
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Divider(),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildThumbsUp(),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 9.v,
                  bottom: 9.v,
                ),
                child: Text(
                  "msg_transaction_alerts".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Obx(
                () => CustomSwitch(
                  margin: EdgeInsets.only(
                    left: 162.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  value: controller.isSelectedSwitch2.value,
                  onChange: (value) {
                    controller.isSelectedSwitch2.value = value;
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Divider(),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildThumbsUp(),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 9.v,
                  bottom: 9.v,
                ),
                child: Text(
                  "msg_transaction_alerts".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Obx(
                () => CustomSwitch(
                  margin: EdgeInsets.only(
                    left: 162.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  value: controller.isSelectedSwitch3.value,
                  onChange: (value) {
                    controller.isSelectedSwitch3.value = value;
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Divider(),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildThumbsUp(),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 11.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "msg_biometrics_changes".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Obx(
                () => CustomSwitch(
                  margin: EdgeInsets.only(
                    left: 152.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  value: controller.isSelectedSwitch4.value,
                  onChange: (value) {
                    controller.isSelectedSwitch4.value = value;
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Divider(),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildThumbsUp() {
    return SizedBox(
      height: 35.adaptSize,
      width: 35.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 35.adaptSize,
              width: 35.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPlay,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgClockPurple100,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
