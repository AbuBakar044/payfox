import 'controller/my_linked_account_tab_container_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/my_linked_account_one_page/my_linked_account_one_page.dart';
import 'package:abu_s_application3/presentation/my_linked_account_page/my_linked_account_page.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyLinkedAccountTabContainerScreen
    extends GetWidget<MyLinkedAccountTabContainerController> {
  const MyLinkedAccountTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
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
                    MyLinkedAccountOnePage(),
                    MyLinkedAccountPage(),
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
        text: "msg_my_linked_accounts".tr,
        margin: EdgeInsets.only(left: 96.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgPlusOnprimary,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 22.v,
      width: 355.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimary.withOpacity(0.65),
        unselectedLabelColor: theme.colorScheme.onPrimary.withOpacity(1),
        tabs: [
          Tab(
            child: Text(
              "lbl_wallets".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_cards".tr,
            ),
          ),
        ],
      ),
    );
  }
}
