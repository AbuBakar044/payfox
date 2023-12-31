import 'controller/done_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DoneScreen extends GetWidget<DoneController> {
  const DoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90010,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20.h,
            top: 115.v,
            right: 20.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPngwing1180x180,
                height: 180.adaptSize,
                width: 180.adaptSize,
              ),
              SizedBox(height: 72.v),
              Text(
                "msg_your_account_has".tr,
                style: CustomTextStyles.bodyLargeOnPrimary18,
              ),
              SizedBox(height: 7.v),
              Container(
                width: 300.h,
                margin: EdgeInsets.only(
                  left: 25.h,
                  right: 26.h,
                ),
                child: Text(
                  "msg_you_ve_successfully".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeGray40002,
                ),
              ),
              SizedBox(height: 35.v),
              _buildButtonSection(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonSection() {
    return SizedBox(
      height: 56.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 52.v,
              width: 353.h,
              decoration: BoxDecoration(),
            ),
          ),
          CustomElevatedButton(
            height: 56.v,
            width: 353.h,
            text: "lbl_explore".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToBlueATL28Decoration,
            buttonTextStyle: CustomTextStyles.titleSmallBold,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
