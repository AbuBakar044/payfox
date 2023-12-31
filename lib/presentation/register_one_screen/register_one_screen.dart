import 'controller/register_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_outlined_button.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterOneScreen extends GetWidget<RegisterOneController> {
  const RegisterOneScreen({Key? key})
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
            horizontal: 17.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 17.h),
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
                                    imagePath: ImageConstant.imgComponent5,
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
                                    imagePath:
                                        ImageConstant.imgPlayBlueGray90007,
                                    height: 15.adaptSize,
                                    width: 15.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: 9.adaptSize,
                                      width: 9.adaptSize,
                                      margin: EdgeInsets.only(right: 2.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 1.h,
                                        vertical: 2.v,
                                      ),
                                      decoration: AppDecoration.fillBlueGray,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgVector,
                                        height: 3.v,
                                        width: 5.h,
                                        alignment: Alignment.center,
                                      ),
                                    ),
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
              SizedBox(height: 34.v),
              _buildRecipientSection(),
              SizedBox(height: 43.v),
              CustomElevatedButton(
                text: "lbl_make_payment".tr,
              ),
              SizedBox(height: 20.v),
              CustomOutlinedButton(
                text: "lbl_cancel".tr,
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
  Widget _buildRecipientSection() {
    return Container(
      margin: EdgeInsets.only(left: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillGray90009.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildOrderDetailsSection(
              amountText: "lbl_recipient".tr,
              priceText: "lbl_courtney_henry".tr,
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "lbl_email_addres".tr,
                    style: CustomTextStyles.labelLargeGray40009_1,
                  ),
                ),
                Text(
                  "msg_kogflzb_gmail_com".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildOrderDetailsSection(
              amountText: "lbl_amount".tr,
              priceText: "lbl_20_000".tr,
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_vat".tr,
                  style: CustomTextStyles.labelLargeGray40009_1,
                ),
                Text(
                  "lbl_1_87".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildOrderDetailsSection(
              amountText: "lbl_order_date".tr,
              priceText: "lbl_15_12_2023".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildReviewSection({required String imageComponent}) {
    return SizedBox(
      height: 15.v,
      width: 53.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: imageComponent,
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

  /// Common widget
  Widget _buildOrderDetailsSection({
    required String amountText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          amountText,
          style: CustomTextStyles.labelLargeGray40009_1.copyWith(
            color: appTheme.gray40009,
          ),
        ),
        Text(
          priceText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
      ],
    );
  }
}
