import 'controller/tickets_one_tab_container_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/tickets_one_page/tickets_one_page.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TicketsOneTabContainerScreen
    extends GetWidget<TicketsOneTabContainerController> {
  const TicketsOneTabContainerScreen({Key? key})
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
              SizedBox(height: 13.v),
              _buildTabview(),
              SizedBox(
                height: 715.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    TicketsOnePage(),
                    TicketsOnePage(),
                    TicketsOnePage(),
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
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_tickets".tr,
      ),
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
        labelColor: theme.colorScheme.onPrimary.withOpacity(1),
        unselectedLabelColor: theme.colorScheme.onPrimary.withOpacity(0.65),
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_movies".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_transport".tr,
            ),
          ),
        ],
      ),
    );
  }
}
