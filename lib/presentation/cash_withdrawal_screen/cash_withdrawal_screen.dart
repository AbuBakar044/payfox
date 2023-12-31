import 'controller/cash_withdrawal_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CashWithdrawalScreen extends GetWidget<CashWithdrawalController> {
  const CashWithdrawalScreen({Key? key})
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
            horizontal: 15.h,
            vertical: 28.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_withdraw_amount".tr,
                style: CustomTextStyles.labelLargeOnPrimary12,
              ),
              SizedBox(height: 17.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 7.v,
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
                      top: 8.v,
                      bottom: 11.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.h),
                    child: Text(
                      "lbl_20_000_00".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.v),
              Divider(
                color: appTheme.gray90016,
                indent: 44.h,
                endIndent: 43.h,
              ),
              SizedBox(height: 69.v),
              Text(
                "msg_select_method_of".tr,
                style: CustomTextStyles.labelLargeOnPrimary12,
              ),
              SizedBox(height: 19.v),
              _buildSelectMethodOfPayment(),
              SizedBox(height: 51.v),
              CustomElevatedButton(
                text: "lbl_proceed".tr,
                margin: EdgeInsets.only(left: 10.h),
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
        text: "lbl_cash_withdrawal".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectMethodOfPayment() {
    return Container(
      margin: EdgeInsets.only(left: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 9.h),
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
                          "lbl_atm".tr,
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
                      horizontal: 45.h,
                      vertical: 32.v,
                    ),
                    decoration: AppDecoration.fillGray90024.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPaypalSvgrepoCom,
                          height: 46.adaptSize,
                          width: 46.adaptSize,
                        ),
                        SizedBox(height: 13.v),
                        Text(
                          "lbl_paypal".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 8.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 42.h,
                      vertical: 30.v,
                    ),
                    decoration: AppDecoration.fillGray90024.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVisaSvgrepoCom,
                          height: 52.adaptSize,
                          width: 52.adaptSize,
                        ),
                        SizedBox(height: 12.v),
                        Text(
                          "lbl_visa".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 38.h,
                      vertical: 29.v,
                    ),
                    decoration: AppDecoration.fillGray90024.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 10.v),
                        SizedBox(
                          height: 41.v,
                          width: 59.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 41.v,
                                  width: 59.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray90024,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                    border: Border.all(
                                      color: appTheme.gray90024,
                                      width: 13.h,
                                      strokeAlign: strokeAlignCenter,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 11.v),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorPink300,
                                        height: 16.v,
                                        width: 12.h,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorPink30016x11,
                                        height: 16.v,
                                        width: 11.h,
                                        margin: EdgeInsets.only(left: 1.h),
                                      ),
                                      Column(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorPink3004x4,
                                            height: 4.adaptSize,
                                            width: 4.adaptSize,
                                            alignment: Alignment.centerRight,
                                          ),
                                          SizedBox(
                                            width: 12.h,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgVectorPink30011x6,
                                                  height: 11.v,
                                                  width: 6.h,
                                                ),
                                                Container(
                                                  height: 11.v,
                                                  width: 4.h,
                                                  decoration: BoxDecoration(
                                                    color: appTheme.pink300,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorPink30016x4,
                                        height: 16.v,
                                        width: 4.h,
                                        margin: EdgeInsets.only(left: 1.h),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorPink30016x4,
                                        height: 16.v,
                                        width: 4.h,
                                        margin: EdgeInsets.only(left: 1.h),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Text(
                          "lbl_skrill".tr,
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
