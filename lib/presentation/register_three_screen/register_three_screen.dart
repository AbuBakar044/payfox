import 'controller/register_three_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterThreeScreen extends GetWidget<RegisterThreeController> {
  const RegisterThreeScreen({Key? key})
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
            horizontal: 19.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: AnotherStepper(
                  iconHeight: 46,
                  iconWidth: 42,
                  stepperDirection: Axis.horizontal,
                  activeIndex: 0,
                  inverted: true,
                  stepperList: [
                    StepperData(
                      iconWidget: Column(
                        children: [
                          Container(
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                            padding: EdgeInsets.all(2.h),
                            decoration:
                                AppDecoration.gradientPrimaryToBlueA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgIconOutlineCheck,
                              height: 9.adaptSize,
                              width: 9.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            width: 42.h,
                            margin: EdgeInsets.only(top: 4.v),
                            child: Text(
                              "msg_product_category".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmall10.copyWith(
                                height: 1.20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    StepperData(
                      iconWidget: Column(
                        children: [
                          Container(
                            height: 9.adaptSize,
                            width: 9.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 1.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.gradientPrimaryToBlueA,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 3.v,
                              width: 5.h,
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            width: 48.h,
                            margin: EdgeInsets.only(top: 10.v),
                            child: Text(
                              "msg_product_catalogue".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmall10.copyWith(
                                height: 1.20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    StepperData(
                      iconWidget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              height: 15.v,
                              width: 53.h,
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgComponent4,
                                    height: 15.v,
                                    width: 53.h,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconOutlineCheck,
                                    height: 9.adaptSize,
                                    width: 9.adaptSize,
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 3.h),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: Text(
                              "lbl_customize".tr,
                              style: CustomTextStyles.bodySmall10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    StepperData(
                      iconWidget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              height: 15.v,
                              width: 53.h,
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgComponent4,
                                    height: 15.v,
                                    width: 53.h,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconOutlineCheck,
                                    height: 9.adaptSize,
                                    width: 9.adaptSize,
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 2.h),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: Text(
                              "lbl_review".tr,
                              style: CustomTextStyles.bodySmall10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    StepperData(
                      iconWidget: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                              margin: EdgeInsets.only(right: 8.h),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgComponent6,
                                    height: 15.adaptSize,
                                    width: 15.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconOutlineCheck,
                                    height: 9.adaptSize,
                                    width: 9.adaptSize,
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.only(right: 2.h),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 41.h,
                            margin: EdgeInsets.only(top: 4.v),
                            child: Text(
                              "lbl_payment_method".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmall10.copyWith(
                                height: 1.20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37.v),
              _buildTransactionDetails(),
              SizedBox(height: 40.v),
              _buildPaymentDetails(),
              SizedBox(height: 61.v),
              CustomElevatedButton(
                text: "lbl_confirm2".tr,
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
        text: "lbl_cash_register".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionDetails() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 39.h),
      child: Column(
        children: [
          Text(
            "msg_transaction_amount".tr,
            style: CustomTextStyles.labelLargeOnPrimary12,
          ),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 38.h,
                right: 48.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 8.v,
                    ),
                    child: Text(
                      "lbl_usd".tr,
                      style: CustomTextStyles.labelLargeOnPrimary_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 6.v,
                    width: 11.h,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      top: 10.v,
                      bottom: 12.v,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "lbl_20_000_00".tr,
                    style: CustomTextStyles.headlineSmallInter_2,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Divider(
            color: appTheme.gray90016,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentDetails() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Column(
        children: [
          Text(
            "lbl_payment_method".tr,
            style: CustomTextStyles.labelLargeOnPrimary12,
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillGray90024.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkGreen900,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 15.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgAtmMachineSvgrepoCom,
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "lbl_card".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 28.v),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 8.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 38.h,
                    vertical: 33.v,
                  ),
                  decoration: AppDecoration.fillGray90024.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgQrCode46x46,
                        height: 46.adaptSize,
                        width: 46.adaptSize,
                        margin: EdgeInsets.only(right: 3.h),
                      ),
                      SizedBox(height: 12.v),
                      Text(
                        "lbl_qr_code2".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildIconOutlineCheck() {
    return SizedBox(
      height: 15.v,
      width: 53.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgComponent4,
            height: 15.v,
            width: 53.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconOutlineCheck,
            height: 9.adaptSize,
            width: 9.adaptSize,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 2.h),
          ),
        ],
      ),
    );
  }
}
