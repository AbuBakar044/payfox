import 'controller/sign_in_one_tab_container_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/sign_up_one_page/sign_up_one_page.dart';
import 'package:abu_s_application3/presentation/sign_up_page/sign_up_page.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInOneTabContainerScreen
    extends GetWidget<SignInOneTabContainerController> {
  const SignInOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90002,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 65.v),
              CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 49.v,
                width: 44.h,
              ),
              SizedBox(height: 41.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 97.h),
                  child: Text(
                    "lbl_welcome_back".tr,
                    style: CustomTextStyles.headlineSmallInter_1,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 74.h),
                  child: Text(
                    "msg_hello_we_are_glad".tr,
                    style: CustomTextStyles.labelLargeGray40002_3,
                  ),
                ),
              ),
              SizedBox(height: 33.v),
              _buildTabview(),
              SizedBox(
                height: 529.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    SignUpPage(),
                    SignUpOnePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 38.v,
      width: 353.h,
      decoration: BoxDecoration(
        color: appTheme.gray90006,
        borderRadius: BorderRadius.circular(
          19.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black90001,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: theme.colorScheme.onErrorContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        indicatorPadding: EdgeInsets.all(
          4.5.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.gray20001,
          borderRadius: BorderRadius.circular(
            14.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_individual".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_business".tr,
            ),
          ),
        ],
      ),
    );
  }
}
