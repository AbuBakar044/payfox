import 'controller/qr_payment_tab_container_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/qr_payment_four_page/qr_payment_four_page.dart';
import 'package:abu_s_application3/presentation/qr_payment_two_page/qr_payment_two_page.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class QrPaymentTabContainerScreen
    extends GetWidget<QrPaymentTabContainerController> {
  const QrPaymentTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(top: 56.v),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup664,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 12.v),
                _buildTabview(),
                SizedBox(
                  height: 716.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      QrPaymentTwoPage(),
                      QrPaymentFourPage(),
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
        text: "lbl_qr_payment".tr,
        margin: EdgeInsets.only(left: 115.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgAirplane,
          margin: EdgeInsets.fromLTRB(20.h, 18.v, 20.h, 14.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 22.v,
      width: 353.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimary.withOpacity(0.65),
        unselectedLabelColor: theme.colorScheme.onPrimary.withOpacity(1),
        tabs: [
          Tab(
            child: Text(
              "lbl_qr_code".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_scan".tr,
            ),
          ),
        ],
      ),
    );
  }
}
