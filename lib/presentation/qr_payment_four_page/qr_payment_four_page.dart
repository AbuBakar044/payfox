import 'controller/qr_payment_four_controller.dart';
import 'models/qr_payment_four_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPaymentFourPage extends StatelessWidget {
  QrPaymentFourPage({Key? key})
      : super(
          key: key,
        );

  QrPaymentFourController controller =
      Get.put(QrPaymentFourController(QrPaymentFourModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 77.v),
              _buildQRCodeSection(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildQRCodeSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          QrImageView(
            data: 'https://www.google.com',
            size: 240.v,
          ),
          SizedBox(height: 44.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 26.v,
            ),
            decoration: AppDecoration.fillGray90009.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: SizedBox(
              width: 327.h,
              child: Text(
                "msg_your_qr_code_is".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumPoppinsGray30002.copyWith(
                  height: 1.43,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
