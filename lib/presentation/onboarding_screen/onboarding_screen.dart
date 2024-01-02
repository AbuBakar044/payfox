

import 'controller/onboarding_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.purple100,
        body: PageView.builder(
          itemCount: 3,
          onPageChanged: (value) {
            
          },
          itemBuilder: (context, index) {
          
            return controller.pages[index];
           
          
          }
        ),
      ),
    );
  }
}
