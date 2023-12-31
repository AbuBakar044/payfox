import 'controller/profile_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 6.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 20.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img59,
                    height: 84.adaptSize,
                    width: 84.adaptSize,
                    radius: BorderRadius.circular(
                      42.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "lbl_sarah".tr,
                            style: CustomTextStyles.bodyMedium15,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_wegan".tr,
                            style: CustomTextStyles.bodyMedium15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Text(
                    "lbl_my_account".tr,
                    style: CustomTextStyles.labelLargeGray200_1,
                  ),
                  SizedBox(height: 10.v),
                  _buildVerifiedStack(),
                  SizedBox(height: 26.v),
                  Text(
                    "lbl_general".tr,
                    style: CustomTextStyles.labelLargeGray200_1,
                  ),
                  SizedBox(height: 11.v),
                  _buildVectorTwelveStack(),
                  SizedBox(height: 103.v),
                  Padding(
                    padding: EdgeInsets.only(left: 123.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVuesaxLinearLogout,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "lbl_log_out".tr,
                            style: CustomTextStyles.titleMediumAmberA400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
      title: AppbarSubtitleOne(
        text: "lbl_profile".tr,
        margin: EdgeInsets.only(left: 135.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildVerifiedStack() {
    return SizedBox(
      height: 177.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 76.v),
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
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration.fillGray90009.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildFrameColumn(
                    settingsImage: ImageConstant.imgTelevision,
                    languageText: "lbl_my_profile".tr,
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: Row(
                        children: [
                          _buildAccountVerification(
                            clock: ImageConstant.imgClock,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 9.v,
                              bottom: 9.v,
                            ),
                            child: Text(
                              "msg_account_verification".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.v,
                              bottom: 7.v,
                            ),
                            child: Obx(
                              () => CustomCheckboxButton(
                                text: "lbl_verified".tr,
                                value: controller.verified.value,
                                onChange: (value) {
                                  controller.verified.value = value;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Divider(),
                  SizedBox(height: 11.v),
                  _buildMyLinkedAccount(
                    purpleThumbsUpImage: ImageConstant.imgThumbsUpPurple100,
                    linkedAccountText: "msg_my_linked_account".tr,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorTwelveStack() {
    return SizedBox(
      height: 231.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 100.v),
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
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillGray90009.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildAccountVerification(
                          clock: ImageConstant.imgTelevisionPurple100,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 11.v,
                            bottom: 7.v,
                          ),
                          child: Text(
                            "msg_customer_support".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 15.v,
                          width: 7.h,
                          margin: EdgeInsets.only(
                            top: 7.v,
                            bottom: 12.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Divider(),
                  SizedBox(height: 11.v),
                  _buildMyLinkedAccount(
                    purpleThumbsUpImage:
                        ImageConstant.imgTelevisionPurple10016x16,
                    linkedAccountText: "msg_reviews_and_rate".tr,
                  ),
                  SizedBox(height: 8.v),
                  Divider(),
                  SizedBox(height: 11.v),
                  _buildFrameColumn(
                    settingsImage: ImageConstant.imgSettings,
                    languageText: "lbl_language".tr,
                  ),
                  SizedBox(height: 11.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 98.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildAccountVerification(
                              clock: ImageConstant.imgUserPurple100,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 9.v),
                              child: Text(
                                "lbl_referrals".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 8.v,
                        ),
                      ),
                    ],
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
  Widget _buildAccountVerification({required String clock}) {
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
                    imagePath: clock,
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
  Widget _buildMyLinkedAccount({
    required String purpleThumbsUpImage,
    required String linkedAccountText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
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
                        imagePath: purpleThumbsUpImage,
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
            top: 10.v,
            bottom: 8.v,
          ),
          child: Text(
            linkedAccountText,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 8.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameColumn({
    required String settingsImage,
    required String languageText,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                            imagePath: settingsImage,
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
                languageText,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                ),
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 8.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.v),
        Divider(),
      ],
    );
  }
}
