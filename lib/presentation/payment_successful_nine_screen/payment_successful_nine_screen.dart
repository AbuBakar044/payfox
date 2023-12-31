import 'controller/payment_successful_nine_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccessfulNineScreen
    extends GetWidget<PaymentSuccessfulNineController> {
  const PaymentSuccessfulNineScreen({Key? key})
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
              SizedBox(height: 44.v),
              Text(
                "msg_withdrawal_successful".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 20.v),
              Text(
                "msg_your_withdraw_has".tr,
                style: CustomTextStyles.labelLargeBluegray10007_1,
              ),
              SizedBox(height: 24.v),
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
