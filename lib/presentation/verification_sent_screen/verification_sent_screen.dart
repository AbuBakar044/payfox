import 'controller/verification_sent_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class VerificationSentScreen extends GetWidget<VerificationSentController> {
  const VerificationSentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 12.h,
            top: 91.v,
            right: 12.h,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 205.v,
                  width: 186.h,
                  margin: EdgeInsets.only(right: 82.h),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBase,
                        height: 203.v,
                        width: 186.h,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPaper,
                        height: 144.v,
                        width: 174.h,
                        alignment: Alignment.topRight,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              Text(
                "msg_email_verification".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 20.v),
              Container(
                width: 283.h,
                margin: EdgeInsets.only(
                  left: 50.h,
                  right: 34.h,
                ),
                child: Text(
                  "msg_check_your_email".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeGray40002_1.copyWith(
                    height: 1.31,
                  ),
                ),
              ),
              SizedBox(height: 38.v),
              CustomElevatedButton(
                height: 56.v,
                text: "lbl_next".tr,
                margin: EdgeInsets.only(left: 16.h),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
