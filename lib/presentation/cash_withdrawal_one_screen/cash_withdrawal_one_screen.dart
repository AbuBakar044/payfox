import 'controller/cash_withdrawal_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CashWithdrawalOneScreen extends GetWidget<CashWithdrawalOneController> {
  const CashWithdrawalOneScreen({Key? key})
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
            vertical: 36.v,
          ),
          child: Column(
            children: [
              _buildSixtyColumn(),
              SizedBox(height: 65.v),
              CustomElevatedButton(
                text: "msg_confirm_withdraw".tr,
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
        text: "msg_withdrawal_summary".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyColumn() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillGray90024.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Column(
              children: [
                Text(
                  "lbl_withdraw_amount".tr,
                  style: CustomTextStyles.labelLargeOnPrimary12_1,
                ),
                SizedBox(height: 8.v),
                Text(
                  "lbl_20_000_002".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Divider(
            color: appTheme.blueGray90004,
            indent: 34.h,
            endIndent: 33.h,
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 5.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_cash_point".tr,
                    style: CustomTextStyles.labelLargeGray40009_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "msg_phoenix_avenue_park".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: _buildVatFrame(
              vatLabel: "lbl_address2".tr,
              priceLabel: "msg_41_thompson_avenue".tr,
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildWithdrawalDateFrame(
              withdrawalDateLabel: "lbl_amount".tr,
              withdrawalDateText: "lbl_20_000".tr,
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 3.h,
            ),
            child: _buildVatFrame(
              vatLabel: "lbl_vat".tr,
              priceLabel: "lbl_1_87".tr,
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildWithdrawalDateFrame(
              withdrawalDateLabel: "lbl_withdrawal_date".tr,
              withdrawalDateText: "lbl_15_12_2023".tr,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_g478rfh484hri".tr,
                    style: CustomTextStyles.labelLargeGray40009_1,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgUserGray90023,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 4.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_3747".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDownOnprimary,
                  height: 6.v,
                  width: 13.h,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 9.v,
                    bottom: 9.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 55.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildVatFrame({
    required String vatLabel,
    required String priceLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          vatLabel,
          style: CustomTextStyles.labelLargeGray40009_1.copyWith(
            color: appTheme.gray40009,
          ),
        ),
        Text(
          priceLabel,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWithdrawalDateFrame({
    required String withdrawalDateLabel,
    required String withdrawalDateText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          withdrawalDateLabel,
          style: CustomTextStyles.labelLargeGray40009_1.copyWith(
            color: appTheme.gray40009,
          ),
        ),
        Text(
          withdrawalDateText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
      ],
    );
  }
}
