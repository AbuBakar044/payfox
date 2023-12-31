import 'controller/qr_payment_two_controller.dart';
import 'models/qr_payment_two_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPaymentTwoPage extends StatelessWidget {
  QrPaymentTwoPage({Key? key})
      : super(
          key: key,
        );

  QrPaymentTwoController controller =
      Get.put(QrPaymentTwoController(QrPaymentTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup664,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup664,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 103.v),
                Container(
                  height: 317.v,
                  width: 291.h,
                  margin: EdgeInsets.symmetric(horizontal: 51.h),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: QrImageView(
                          data: 'https://www.google.com',
                          size: 225.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup1000001768,
                        height: 61.v,
                        width: 291.h,
                        alignment: Alignment.topCenter,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup1000001768,
                        height: 61.v,
                        width: 291.h,
                        alignment: Alignment.bottomCenter,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup24,
                        height: 62.v,
                        width: 291.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
