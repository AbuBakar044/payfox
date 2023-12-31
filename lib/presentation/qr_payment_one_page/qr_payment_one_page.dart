import 'controller/qr_payment_one_controller.dart';
import 'models/qr_payment_one_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPaymentOnePage extends StatelessWidget {
  QrPaymentOnePage({Key? key})
      : super(
          key: key,
        );

  QrPaymentOneController controller =
      Get.put(QrPaymentOneController(QrPaymentOneModel().obs));

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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 317.v,
                        width: 291.h,
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
                      SizedBox(height: 38.v),
                      _buildTheScanningIs(),
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

  /// Section Widget
  Widget _buildTheScanningIs() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillGray90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: SizedBox(
        width: 321.h,
        child: Text(
          "msg_the_scanning_is".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: CustomTextStyles.bodyMediumPoppinsGray30002.copyWith(
            height: 1.43,
          ),
        ),
      ),
    );
  }
}
