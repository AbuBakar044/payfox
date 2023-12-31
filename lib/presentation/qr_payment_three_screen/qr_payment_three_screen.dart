import 'controller/qr_payment_three_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class QrPaymentThreeScreen extends GetWidget<QrPaymentThreeController> {
  const QrPaymentThreeScreen({Key? key})
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
            vertical: 24.v,
          ),
          child: Column(
            children: [
              _buildRecipientColumn(),
              SizedBox(height: 22.v),
              _buildVideoCameraColumn(),
              SizedBox(height: 37.v),
              CustomElevatedButton(
                text: "lbl_proceed".tr,
                margin: EdgeInsets.symmetric(horizontal: 3.h),
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
        text: "lbl_payment_summary".tr,
        margin: EdgeInsets.only(left: 94.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecipientColumn() {
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
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: _buildAmountRow(
              amountText: "lbl_recipient".tr,
              priceText: "lbl_nkukun_chris".tr,
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
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: _buildAmountRow(
              amountText: "lbl_amount".tr,
              priceText: "lbl_100_000".tr,
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
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
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: _buildAmountRow(
              amountText: "lbl_withdrawal_date".tr,
              priceText: "lbl_15_12_2023".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVideoCameraColumn() {
    return Container(
      width: 353.h,
      margin: EdgeInsets.only(left: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillGray90005.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVideoCamera,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 4.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "msg_before_sending".tr,
                    style: CustomTextStyles.titleSmallSemiBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 4.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.lightGreenA200,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_verified_your_recipient".tr,
                  style: CustomTextStyles.labelLargeBluegray10002,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 3.v),
                decoration: BoxDecoration(
                  color: appTheme.lightGreenA200,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_transaction_is_not".tr,
                  style: CustomTextStyles.labelLargeBluegray10002,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 52.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 4.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.lightGreenA200,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "msg_this_activity_doesn_t".tr,
                    style: CustomTextStyles.labelLargeBluegray10002,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAmountRow({
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
