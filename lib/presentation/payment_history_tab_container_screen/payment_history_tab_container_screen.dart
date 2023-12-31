import 'controller/payment_history_tab_container_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_history_page/payment_history_page.dart';
import 'package:abu_s_application3/presentation/payment_history_two_page/payment_history_two_page.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentHistoryTabContainerScreen
    extends GetWidget<PaymentHistoryTabContainerController> {
  const PaymentHistoryTabContainerScreen({Key? key})
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
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildTabview(),
              SizedBox(
                height: 716.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    PaymentHistoryPage(),
                    PaymentHistoryTwoPage(),
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 54.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_payment_history".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 21.v,
      width: 353.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimary.withOpacity(0.65),
        unselectedLabelColor: theme.colorScheme.onPrimary.withOpacity(1),
        tabs: [
          Tab(
            child: Text(
              "msg_unsettled_payments".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_completed".tr,
            ),
          ),
        ],
      ),
    );
  }
}
