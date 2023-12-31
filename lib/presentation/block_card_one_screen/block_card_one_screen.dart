import 'controller/block_card_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BlockCardOneScreen extends GetWidget<BlockCardOneController> {
  const BlockCardOneScreen({Key? key})
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
            top: 83.v,
            right: 20.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNoCreditCards,
                height: 120.adaptSize,
                width: 120.adaptSize,
              ),
              SizedBox(height: 10.v),
              Text(
                "msg_your_card_has_been".tr,
                style: CustomTextStyles.titleMediumBold17,
              ),
              SizedBox(height: 19.v),
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
