import 'controller/business_controller.dart';
import 'models/business_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BusinessPage extends StatelessWidget {
  BusinessPage({Key? key})
      : super(
          key: key,
        );

  BusinessController controller =
      Get.put(BusinessController(BusinessModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          height: 677.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 21.v,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 110.v),
                  child: SizedBox(
                    width: 321.h,
                    child: Divider(
                      color: appTheme.gray90009,
                    ),
                  ),
                ),
              ),
              _buildAdmin(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 42.v,
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_business".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAdmin() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(right: 8.h),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 19.v,
        ),
        decoration: AppDecoration.fillGray90009.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildPaymentTerminal(
              thumbsUpPurpleImage: ImageConstant.imgGridPurple100,
              paymentTerminalText: "lbl_qr_code_sticker2".tr,
            ),
            SizedBox(height: 8.v),
            Divider(),
            SizedBox(height: 11.v),
            _buildPaymentTerminal(
              thumbsUpPurpleImage: ImageConstant.imgThumbsUpPurple10016x16,
              paymentTerminalText: "msg_payment_terminal".tr,
            ),
            SizedBox(height: 8.v),
            Divider(),
            SizedBox(height: 11.v),
            _buildPaymentTerminal(
              thumbsUpPurpleImage: ImageConstant.imgGrid,
              paymentTerminalText: "lbl_cash_register".tr,
            ),
            SizedBox(height: 8.v),
            Divider(),
            SizedBox(height: 11.v),
            _buildPaymentTerminal(
              thumbsUpPurpleImage: ImageConstant.imgTelevision1,
              paymentTerminalText: "lbl_admin".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPaymentTerminal({
    required String thumbsUpPurpleImage,
    required String paymentTerminalText,
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
                        imagePath: thumbsUpPurpleImage,
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
            paymentTerminalText,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 145.h,
            top: 3.v,
            bottom: 8.v,
          ),
        ),
      ],
    );
  }
}
