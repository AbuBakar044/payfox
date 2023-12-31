import 'controller/parking_tab_container_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/parking_page/parking_page.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ParkingTabContainerScreen
    extends GetWidget<ParkingTabContainerController> {
  const ParkingTabContainerScreen({Key? key})
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
              SizedBox(height: 17.v),
              _buildPhoenixAvenuePark(),
              SizedBox(height: 22.v),
              Divider(
                indent: 20.h,
                endIndent: 20.h,
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "msg_select_days_for".tr,
                    style: CustomTextStyles.labelLargeGray200,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              _buildTabview(),
              _buildTabBarView(),
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
        text: "lbl_book_park_spot".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoenixAvenuePark() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle16,
            height: 261.v,
            width: 353.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_phoenix_avenue_park2".tr,
                      style: CustomTextStyles.titleSmallSemiBold15,
                    ),
                    SizedBox(height: 11.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsOnprimary13x13,
                          height: 13.adaptSize,
                          width: 13.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "msg_1210_phoenix_avenue".tr,
                            style: CustomTextStyles.labelMediumOnPrimary_2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 11.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_43".tr,
                          style: CustomTextStyles.titleLargeSemiBold,
                        ),
                        TextSpan(
                          text: "lbl_hr".tr,
                          style: CustomTextStyles.bodySmallOnPrimary12_1,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 33.v,
      width: 340.h,
      margin: EdgeInsets.only(left: 20.h),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: Text(
              "lbl_mon".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_tue".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_wed".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_thur".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_fri".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_sat".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView() {
    return SizedBox(
      height: 298.v,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [
          ParkingPage(),
          ParkingPage(),
          ParkingPage(),
          ParkingPage(),
          ParkingPage(),
          ParkingPage(),
        ],
      ),
    );
  }
}
