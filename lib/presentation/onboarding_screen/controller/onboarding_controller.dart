import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/onboarding_screen/models/onboarding_model.dart';
import 'package:abu_s_application3/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:abu_s_application3/presentation/splash_four_screen/splash_four_screen.dart';
import 'package:abu_s_application3/presentation/splash_three_screen/splash_three_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../widgets/custom_elevated_button.dart';

/// A controller class for the OnboardingScreen.
///
/// This class manages the state of the OnboardingScreen, including the
/// current onboardingModelObj
class OnboardingController extends GetxController {
  List<Widget> pages = [
    OnBoardingWidget(),
    SplashThreeScreen(),
    SplashFourScreen(),
  ];
  Rx<OnboardingModel> onboardingModelObj = OnboardingModel().obs;
  
}
class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 48.h,
                vertical: 19.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img3dCryptocurren,
                    height: 286.v,
                    width: 288.h,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "lbl_digital_wallet".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                  SizedBox(height: 37.v),
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
                  Spacer(),
                  CustomElevatedButton(
                    height: 65.v,
                    text: "lbl_continue".tr,
                    onPressed: () {
                      Get.toNamed(AppRoutes.iphone1314ThreeScreen);
                    },
                    margin: EdgeInsets.only(
                      left: 12.h,
                      right: 11.h,
                    ),
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientSecondaryContainerToSecondaryContainerDecoration,
                    buttonTextStyle: theme.textTheme.headlineLarge!,
                  ),
                  SizedBox(height: 77.v),
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
                        dotHeight: 10.v,
                        dotWidth: 10.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 64.v),
                ],
              ),
            );
  }
}
