import 'controller/qr_code_sticker_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class QrCodeStickerOneScreen extends GetWidget<QrCodeStickerOneController> {
  const QrCodeStickerOneScreen({Key? key})
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
            vertical: 48.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgWhereWhatQuest,
                height: 96.adaptSize,
                width: 96.adaptSize,
              ),
              SizedBox(height: 19.v),
              Container(
                width: 277.h,
                margin: EdgeInsets.only(
                  left: 38.h,
                  right: 37.h,
                ),
                child: Text(
                  "msg_you_currently_do2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeBluegray10007_1.copyWith(
                    height: 1.31,
                  ),
                ),
              ),
              SizedBox(height: 43.v),
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
}
