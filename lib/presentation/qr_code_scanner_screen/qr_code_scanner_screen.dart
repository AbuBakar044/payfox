import 'controller/qr_code_scanner_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

// ignore_for_file: must_be_immutable
class QrCodeScannerScreen extends GetWidget<QrCodeScannerController> {
  const QrCodeScannerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(top: 56.v),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup664,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: 751.v,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 51.h,
              vertical: 138.v,
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 46.v),
                    child: QrImageView(
                      data: 'https://www.google.com',
                      size: 225.v,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup1000001768,
                  height: 61.v,
                  width: 291.h,
                  alignment: Alignment.topCenter,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup1000001768,
                  height: 61.v,
                  width: 291.h,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 5.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup24,
                  height: 62.v,
                  width: 291.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 127.v),
                ),
              ],
            ),
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
      actions: [
        AppbarSubtitle(
          text: "lbl_scan".tr,
          margin: EdgeInsets.fromLTRB(20.h, 18.v, 14.h, 6.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgAirplane,
          margin: EdgeInsets.only(
            left: 124.h,
            top: 18.v,
            right: 34.h,
          ),
        ),
      ],
    );
  }
}
