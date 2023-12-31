import 'controller/qr_code_sticker_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

// ignore_for_file: must_be_immutable
class QrCodeStickerScreen extends GetWidget<QrCodeStickerController> {
  const QrCodeStickerScreen({Key? key})
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
            vertical: 26.v,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 41.v,
                ),
                decoration: AppDecoration.fillGray90009.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    QrImageView(
                      data: 'https://www.google.com',
                      size: 240.v,
                    ),
                    SizedBox(height: 20.v),
                    _buildYourQRCodeIs(),
                  ],
                ),
              ),
              SizedBox(height: 49.v),
              CustomElevatedButton(
                text: "msg_generate_qr_code".tr,
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
        text: "lbl_qr_code_sticker".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgTelevisionOnprimary,
          margin: EdgeInsets.fromLTRB(20.h, 12.v, 20.h, 20.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildYourQRCodeIs() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          SizedBox(
            width: 247.h,
            child: Text(
              "msg_your_qr_code_is".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumGray30002.copyWith(
                height: 1.43,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
