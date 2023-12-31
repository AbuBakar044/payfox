import 'controller/qr_code_scanner_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class QrCodeScannerOneScreen extends GetWidget<QrCodeScannerOneController> {
  const QrCodeScannerOneScreen({Key? key})
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
            vertical: 12.v,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 24.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 48.h,
                    vertical: 41.v,
                  ),
                  decoration: AppDecoration.fillGray90009.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 9.v),
                      Text(
                        "lbl_beneficiary".tr,
                        style: CustomTextStyles.labelLargeGray40009,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "lbl_fidu_tv".tr,
                        style: CustomTextStyles.headlineSmallInterSemiBold,
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            right: 12.h,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 83.h,
                                margin: EdgeInsets.only(bottom: 9.v),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _buildThumbsUpStack(
                                      sendImage:
                                          ImageConstant.imgUserPurple10016x16,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 13.v,
                                        bottom: 10.v,
                                      ),
                                      child: Text(
                                        "lbl_copy".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 38.h),
                                child: SizedBox(
                                  height: 49.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    color: appTheme.blueGray90007,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 33.h,
                                  bottom: 9.v,
                                ),
                                child: _buildThumbsUpStack(
                                  sendImage: ImageConstant.imgSend,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 12.v,
                                  bottom: 20.v,
                                ),
                                child: Text(
                                  "lbl_share".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 22.v),
                      CustomElevatedButton(
                        height: 44.v,
                        text: "lbl_open_link".tr,
                        margin: EdgeInsets.only(right: 6.h),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                      ),
                    ],
                  ),
                ),
              ),
              CustomIconButton(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(12.h),
                decoration: IconButtonStyleHelper.fillGrayTL24,
                alignment: Alignment.topCenter,
                child: CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpPurple10048x48,
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
      actions: [
        AppbarSubtitle(
          text: "lbl_scan".tr,
          margin: EdgeInsets.fromLTRB(139.h, 18.v, 168.h, 20.v),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildThumbsUpStack({required String sendImage}) {
    return SizedBox(
      height: 40.adaptSize,
      width: 40.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 27.adaptSize,
            width: 27.adaptSize,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 40.adaptSize,
              width: 40.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPlay,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: sendImage,
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
