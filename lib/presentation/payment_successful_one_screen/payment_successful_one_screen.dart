import 'controller/payment_successful_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccessfulOneScreen
    extends GetWidget<PaymentSuccessfulOneController> {
  const PaymentSuccessfulOneScreen({Key? key})
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
              SizedBox(height: 47.v),
              Text(
                "msg_payment_approved".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 19.v),
              Text(
                "msg_your_payment_was".tr,
                style: CustomTextStyles.labelLargeBluegray10007_1,
              ),
              SizedBox(height: 23.v),
              CustomElevatedButton(
                text: "msg_generate_receipt".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
