import 'controller/write_reviews_tab_container_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/write_reviews_page/write_reviews_page.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class WriteReviewsTabContainerScreen
    extends GetWidget<WriteReviewsTabContainerController> {
  const WriteReviewsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 7.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text(
                    "lbl_rate".tr,
                    style: CustomTextStyles.titleSmall15,
                  ),
                ),
                SizedBox(height: 14.v),
                _buildTabview(),
                SizedBox(
                  height: 731.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      WriteReviewsPage(),
                      WriteReviewsPage(),
                      WriteReviewsPage(),
                      WriteReviewsPage(),
                      WriteReviewsPage(),
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "lbl_write_review".tr,
        margin: EdgeInsets.only(left: 118.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 32.v,
      width: 338.h,
      margin: EdgeInsets.only(left: 19.h),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimary.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimary.withOpacity(1),
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            5.h,
          ),
          gradient: LinearGradient(
            begin: Alignment(0.17, -0.66),
            end: Alignment(0.66, 2.47),
            colors: [
              appTheme.amberA400,
              appTheme.amberA700,
            ],
          ),
        ),
        tabs: [
          Tab(
            child: Container(
              decoration: AppDecoration.gradientAmberAToAmberA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: Alignment(0.17, -0.66),
                  end: Alignment(0.66, 2.47),
                  colors: [
                    appTheme.amberA400,
                    appTheme.amberA700,
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.h,
                    vertical: 5.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_5".tr,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStarOnprimary,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(left: 2.h),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineGray80006.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_42".tr,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgStar17x17,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 2.h),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineGray80006.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_32".tr,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgStar17x17,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 2.h),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineGray80006.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_22".tr,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgStar17x17,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 2.h),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineGray80006.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_1".tr,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgStar17x17,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(left: 4.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRateRow({required String dynamicText}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineGray80006.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              dynamicText,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.onPrimary.withOpacity(1),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgStar17x17,
            height: 17.adaptSize,
            width: 17.adaptSize,
            margin: EdgeInsets.only(left: 2.h),
          ),
        ],
      ),
    );
  }
}
