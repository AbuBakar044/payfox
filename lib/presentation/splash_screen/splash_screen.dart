import 'controller/splash_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.89, 0.05),
                        end: Alignment(0.22, 1),
                        colors: [
                      theme.colorScheme.primary.withOpacity(0.57),
                      appTheme.deepOrangeA200.withOpacity(0.56)
                    ])),
                child: Container(
                    height: 812.v,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 234.v),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse464,
                          height: 311.v,
                          width: 189.h,
                          alignment: Alignment.topRight),
                      CustomImageView(
                          imagePath: ImageConstant.imgUserDeepOrangeA200,
                          height: 65.v,
                          width: 59.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 82.v)),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 75.v),
                              child: Text("lbl_payfox".tr,
                                  style: CustomTextStyles.interPrimary)))
                    ])))));
  }
}
