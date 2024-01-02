import 'controller/splash_three_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class SplashThreeScreen extends GetWidget<SplashThreeController> {
  const SplashThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.purple100,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 48.h,
          vertical: 5.v,
        ),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img3dCryptocurren,
              height: 286.v,
              width: 288.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 255.h,
                margin: EdgeInsets.only(
                  left: 11.h,
                  right: 30.h,
                ),
                child: Text(
                  "msg_instant_and_secure".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.displayMedium,
                ),
              ),
            ),
            SizedBox(height: 34.v),
            Container(
              width: 289.h,
              margin: EdgeInsets.only(right: 7.h),
              child: Text(
                "msg_elit_luctus_tortor".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumBlack90001,
              ),
            ),
            SizedBox(height: 83.v),
            CustomElevatedButton(
              height: 65.v,
              text: "lbl_continue".tr,
              margin: EdgeInsets.only(
                left: 12.h,
                right: 11.h,
              ),
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles
                  .gradientSecondaryContainerToSecondaryContainerDecoration,
              buttonTextStyle: theme.textTheme.headlineLarge!,
            ),
            SizedBox(height: 75.v),
            SizedBox(
              height: 20.v,
              child: AnimatedSmoothIndicator(
                activeIndex: 1,
                count: 3,
                effect: ScrollingDotsEffect(
                  spacing: 10,
                  activeDotColor:
                      theme.colorScheme.secondaryContainer.withOpacity(1),
                  dotColor: appTheme.blueGray10006,
                  dotHeight: 10.v,
                  dotWidth: 10.h,
                ),
              ),
            ),
            SizedBox(height: 5.v),
          ],
        ),
      ),
    );
  }
}
