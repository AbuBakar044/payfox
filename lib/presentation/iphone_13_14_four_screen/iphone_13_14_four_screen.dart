import 'controller/iphone_13_14_four_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class Iphone1314FourScreen extends GetWidget<Iphone1314FourController> {
  const Iphone1314FourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.purple100,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img3dCryptocurren,
                height: 286.v,
                width: 288.h,
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 326.h,
                  margin: EdgeInsets.only(right: 14.h),
                  child: Text(
                    "msg_effortless_money".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Container(
                width: 289.h,
                margin: EdgeInsets.only(
                  left: 22.h,
                  right: 29.h,
                ),
                child: Text(
                  "msg_elit_luctus_tortor".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBlack90001,
                ),
              ),
              SizedBox(height: 86.v),
              CustomElevatedButton(
                height: 65.v,
                text: "lbl_get_started".tr,
                margin: EdgeInsets.only(
                  left: 34.h,
                  right: 33.h,
                ),
                buttonStyle: CustomButtonStyles.none,
                decoration: CustomButtonStyles
                    .gradientSecondaryContainerToSecondaryContainerDecoration,
                buttonTextStyle: theme.textTheme.headlineLarge!,
              ),
              SizedBox(height: 74.v),
              SizedBox(
                height: 20.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 10,
                    activeDotColor:
                        theme.colorScheme.secondaryContainer.withOpacity(1),
                    dotColor: appTheme.blueGray10006,
                    dotHeight: 20.v,
                    dotWidth: 20.h,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
