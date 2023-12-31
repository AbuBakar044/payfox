import 'controller/pin_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PinScreen extends GetWidget<PinController> {
  const PinScreen({Key? key})
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
            horizontal: 53.h,
            vertical: 46.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_tap_on_card_to".tr,
                style: CustomTextStyles.labelLargeOnPrimary12,
              ),
              SizedBox(height: 26.v),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                color: theme.colorScheme.onPrimaryContainer,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.h,
                  ),
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Container(
                  height: 162.v,
                  width: 285.h,
                  decoration: AppDecoration.outline1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder14,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle94x108,
                        height: 162.v,
                        width: 184.h,
                        alignment: Alignment.centerRight,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 161.v,
                          width: 285.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgNoise161x285,
                                height: 161.v,
                                width: 285.h,
                                radius: BorderRadius.circular(
                                  13.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.h,
                                    top: 6.v,
                                    right: 9.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSettingsOnprimary,
                                            height: 16.v,
                                            width: 14.h,
                                            margin: EdgeInsets.only(top: 7.v),
                                          ),
                                          Container(
                                            height: 20.v,
                                            width: 51.h,
                                            margin:
                                                EdgeInsets.only(bottom: 3.v),
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgVisa,
                                                  height: 10.v,
                                                  width: 38.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgCheckmarkGreen900,
                                                  height: 13.adaptSize,
                                                  width: 13.adaptSize,
                                                  alignment: Alignment.topRight,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 39.v),
                                      Container(
                                        decoration:
                                            AppDecoration.outlineBlack90001,
                                        child: Text(
                                          "msg_3507".tr,
                                          style:
                                              CustomTextStyles.titleMediumBold,
                                        ),
                                      ),
                                      SizedBox(height: 26.v),
                                      Padding(
                                        padding: EdgeInsets.only(right: 13.h),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 4.v),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "msg_card_holder_name".tr,
                                                    style: CustomTextStyles
                                                        .interGray100Medium6,
                                                  ),
                                                  SizedBox(height: 3.v),
                                                  Container(
                                                    decoration: AppDecoration
                                                        .outlineGray90001,
                                                    child: Text(
                                                      "lbl_sarah_wegan".tr,
                                                      style: CustomTextStyles
                                                          .labelSmallGray100Bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Spacer(
                                              flex: 41,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 4.v),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "lbl_expiry_date".tr,
                                                      style: CustomTextStyles
                                                          .interGray100Medium6,
                                                    ),
                                                  ),
                                                  SizedBox(height: 3.v),
                                                  Container(
                                                    decoration: AppDecoration
                                                        .outlineGray90001,
                                                    child: Text(
                                                      "lbl_02_30".tr,
                                                      style: CustomTextStyles
                                                          .labelSmallGray100Bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Spacer(
                                              flex: 58,
                                            ),
                                            Opacity(
                                              opacity: 0.7,
                                              child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgGridOnprimary,
                                                height: 20.v,
                                                width: 29.h,
                                                margin:
                                                    EdgeInsets.only(top: 8.v),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 13.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_input_pin".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(20.h, 9.v, 20.h, 21.v),
        ),
      ],
    );
  }
}
