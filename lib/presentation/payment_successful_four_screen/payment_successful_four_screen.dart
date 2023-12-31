import 'controller/payment_successful_four_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccessfulFourScreen
    extends GetWidget<PaymentSuccessfulFourController> {
  const PaymentSuccessfulFourScreen({Key? key})
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
            top: 129.v,
            right: 20.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 117.v,
                width: 210.h,
              ),
              SizedBox(height: 46.v),
              Text(
                "msg_payment_successful".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 17.v),
              Container(
                width: 274.h,
                margin: EdgeInsets.symmetric(horizontal: 39.h),
                child: Text(
                  "msg_your_payment_has".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeBluegray10007_1.copyWith(
                    height: 1.31,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              CustomElevatedButton(
                height: 56.v,
                text: "msg_continue_banking".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
