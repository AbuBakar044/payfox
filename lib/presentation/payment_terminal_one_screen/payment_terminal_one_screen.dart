import 'controller/payment_terminal_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentTerminalOneScreen extends GetWidget<PaymentTerminalOneController> {
  const PaymentTerminalOneScreen({Key? key})
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
            vertical: 37.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_transaction_amount".tr,
                style: CustomTextStyles.labelLargeOnPrimary12,
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 77.h,
                  right: 86.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(height: 11.v),
              Divider(
                color: appTheme.gray90016,
                indent: 39.h,
                endIndent: 38.h,
              ),
              SizedBox(height: 40.v),
              _buildPaymentFrame(),
              SizedBox(height: 75.v),
              CustomElevatedButton(
                text: "lbl_proceed".tr,
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
        text: "lbl_new_payment".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(20.h, 9.v, 20.h, 21.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPaymentFrame() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Column(
        children: [
          Text(
            "lbl_payment_method".tr,
            style: CustomTextStyles.labelLargeOnPrimary12,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
