import 'controller/payment_successful_eight_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccessfulEightScreen
    extends GetWidget<PaymentSuccessfulEightController> {
  const PaymentSuccessfulEightScreen({Key? key})
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
            left: 20.h,
            top: 74.v,
            right: 20.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1000003997,
                height: 139.v,
                width: 210.h,
              ),
              SizedBox(height: 25.v),
              Text(
                "msg_request_sent_successful".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 17.v),
              Container(
                width: 275.h,
                margin: EdgeInsets.symmetric(horizontal: 38.h),
                child: Text(
                  "msg_your_payment_has3".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeBluegray10007_1.copyWith(
                    height: 1.31,
                  ),
                ),
              ),
              SizedBox(height: 34.v),
              CustomElevatedButton(
                text: "msg_continue_banking".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
