import 'controller/receipt_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class ReceiptOneScreen extends GetWidget<ReceiptOneController> {
  const ReceiptOneScreen({Key? key})
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
            vertical: 21.v,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 31.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup1000001945,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 47.v,
                      width: 42.h,
                    ),
                    SizedBox(height: 32.v),
                    Text(
                      "msg_transaction_receipt".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 27.v),
                    Text(
                      "lbl_103_000".tr,
                      style: CustomTextStyles.headlineSmallInterSemiBold_1,
                    ),
                    SizedBox(height: 11.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "msg_24_december_2023".tr,
                          style: CustomTextStyles.bodySmallGray40010,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 17.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: appTheme.gray40015,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "lbl_08_20".tr,
                            style: CustomTextStyles.bodySmallGray40010,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.v),
                    Divider(
                      color: appTheme.gray80001,
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(right: 7.h),
                      child: _buildTransactionRefFrame(
                        transactionRefText: "msg_beneficiary_s_bank".tr,
                        messageText: "lbl_wells_fargo".tr,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              "msg_recipient_details".tr,
                              style: CustomTextStyles.labelLargeGray50010,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "lbl_samson".tr,
                            style: CustomTextStyles.labelLargeGray20001,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: SizedBox(
                              height: 17.v,
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: appTheme.gray20001,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Text(
                              "lbl_0123456789".tr,
                              style: CustomTextStyles.labelLargeGray20001,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Padding(
                      padding: EdgeInsets.only(right: 7.h),
                      child: _buildTransactionRefFrame(
                        transactionRefText: "lbl_transaction_ref".tr,
                        messageText: "msg_152bjk2721go3ortr".tr,
                      ),
                    ),
                    SizedBox(height: 57.v),
                    Text(
                      "msg_customer_support".tr,
                      style: CustomTextStyles.labelMediumGray40013,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "msg_contactsupport_payfox".tr,
                      style: CustomTextStyles.labelLargeDeeporangeA400,
                    ),
                    SizedBox(height: 20.v),
                  ],
                ),
              ),
              SizedBox(height: 40.v),
              CustomElevatedButton(
                text: "lbl_share".tr,
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
        text: "lbl_receipt".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(20.h, 9.v, 20.h, 21.v),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTransactionRefFrame({
    required String transactionRefText,
    required String messageText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          transactionRefText,
          style: CustomTextStyles.labelLargeGray50010.copyWith(
            color: appTheme.gray50010,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            messageText,
            style: CustomTextStyles.labelMediumGray20001.copyWith(
              color: appTheme.gray20001,
            ),
          ),
        ),
      ],
    );
  }
}
