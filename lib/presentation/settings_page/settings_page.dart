import 'controller/settings_controller.dart';
import 'models/settings_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key})
      : super(
          key: key,
        );

  SettingsController controller =
      Get.put(SettingsController(SettingsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 11.v,
          ),
          child: Column(
            children: [
              _buildFrame1(),
              SizedBox(height: 20.v),
              _buildFrame2(),
              SizedBox(height: 20.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 48.v,
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_settings".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_app_preference".tr,
          style: CustomTextStyles.labelLargeGray200_1,
        ),
        SizedBox(height: 10.v),
        SizedBox(
          height: 132.v,
          width: 353.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 27.v),
                  child: SizedBox(
                    width: 321.h,
                    child: Divider(
                      color: appTheme.gray90009,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 20.v,
                  ),
                  decoration: AppDecoration.fillGray90009.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _buildThumbsUp(
                            televisionImage: ImageConstant.imgMoney,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 10.v,
                              bottom: 8.v,
                            ),
                            child: Text(
                              "msg_currency_display".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 12.v,
                              bottom: 6.v,
                            ),
                            child: Text(
                              "lbl_usd".tr,
                              style: CustomTextStyles.bodyMediumGray50005,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                              left: 2.h,
                              top: 14.v,
                              bottom: 5.v,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 11.v),
                      _buildRow1(
                        locationImage: ImageConstant.imgTelevision16x16,
                        passwordManagementText: "lbl_app_updates".tr,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_security_settings".tr,
          style: CustomTextStyles.labelLargeGray200_1,
        ),
        SizedBox(height: 10.v),
        SizedBox(
          height: 285.v,
          width: 353.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 104.v),
                  child: SizedBox(
                    width: 321.h,
                    child: Divider(
                      color: appTheme.gray90009,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 14.v,
                  ),
                  decoration: AppDecoration.fillGray90009.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildRow1(
                        locationImage: ImageConstant.imgLocation,
                        passwordManagementText: "msg_password_management".tr,
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 11.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildThumbsUp(
                            televisionImage: ImageConstant.imgClockPurple100,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 9.v,
                              bottom: 9.v,
                            ),
                            child: Text(
                              "msg_biometric_authentication".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Spacer(),
                          Obx(
                            () => CustomSwitch(
                              margin: EdgeInsets.only(
                                top: 11.v,
                                bottom: 2.v,
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
                      SizedBox(height: 11.v),
                      _buildRow1(
                        locationImage: ImageConstant.imgContrastPurple100,
                        passwordManagementText: "lbl_transfer_pin".tr,
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 11.v),
                      _buildRow1(
                        locationImage: ImageConstant.imgGrid,
                        passwordManagementText: "lbl_privacy".tr,
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 11.v),
                      _buildRow1(
                        locationImage: ImageConstant.imgSettingsPurple100,
                        passwordManagementText: "lbl_security_alerts".tr,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildThumbsUp({required String televisionImage}) {
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
                    imagePath: televisionImage,
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

  /// Common widget
  Widget _buildRow1({
    required String locationImage,
    required String passwordManagementText,
  }) {
    return Row(
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
                        imagePath: locationImage,
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
            passwordManagementText,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(
            top: 9.v,
            bottom: 10.v,
          ),
        ),
      ],
    );
  }
}
