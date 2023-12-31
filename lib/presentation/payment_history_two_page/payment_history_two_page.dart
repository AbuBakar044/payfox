import 'controller/payment_history_two_controller.dart';
import 'models/payment_history_two_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class PaymentHistoryTwoPage extends StatelessWidget {
  PaymentHistoryTwoPage({Key? key})
      : super(
          key: key,
        );

  PaymentHistoryTwoController controller =
      Get.put(PaymentHistoryTwoController(PaymentHistoryTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 93.v),
              _buildWhereWhatQuestFrame(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWhereWhatQuestFrame() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 57.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWhereWhatQuest,
            height: 96.adaptSize,
            width: 96.adaptSize,
          ),
          SizedBox(height: 20.v),
          SizedBox(
            width: 279.h,
            child: Text(
              "msg_you_currently_do".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeBluegray10007_1.copyWith(
                height: 1.31,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
