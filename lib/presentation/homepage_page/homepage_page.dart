import '../homepage_page/widgets/refuelingsection_item_widget.dart';
import '../homepage_page/widgets/userprofilesection_item_widget.dart';
import 'controller/homepage_controller.dart';
import 'models/homepage_model.dart';
import 'models/refuelingsection_item_model.dart';
import 'models/userprofilesection_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HomepagePage extends StatelessWidget {
  HomepagePage({Key? key})
      : super(
          key: key,
        );

  HomepageController controller =
      Get.put(HomepageController(HomepageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              SizedBox(height: 25.v),
              _buildTopupSection(),
              SizedBox(height: 16.v),
              _buildRefuelingSection(),
              SizedBox(height: 28.v),
              _buildRecentTransactionsSection(),
              SizedBox(height: 15.v),
              _buildUserProfileSection(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.img5940x40,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 8.v,
          bottom: 7.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Column(
          children: [
            AppbarSubtitleTwo(
              text: "lbl_welcome".tr,
              margin: EdgeInsets.only(right: 68.h),
            ),
            SizedBox(height: 5.v),
            AppbarTitle(
              text: "msg_christopher_willis".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgVuesaxLinearNotification,
          margin: EdgeInsets.fromLTRB(20.h, 10.v, 20.h, 9.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTopupSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 87.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "msg_your_available_balance".tr,
            style: CustomTextStyles.labelMediumGray50008,
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEyeGray40004,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    bottom: 6.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_12_000_00".tr,
                    style: CustomTextStyles.titleLarge22,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          CustomElevatedButton(
            height: 29.v,
            text: "lbl_top_up".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 2.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgPlusPrimary,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillOnPrimary,
            buttonTextStyle: CustomTextStyles.labelMediumPrimary,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRefuelingSection() {
    return SizedBox(
      height: 90.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 5.h,
            );
          },
          itemCount: controller
              .homepageModelObj.value.refuelingsectionItemList.value.length,
          itemBuilder: (context, index) {
            RefuelingsectionItemModel model = controller
                .homepageModelObj.value.refuelingsectionItemList.value[index];
            return RefuelingsectionItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentTransactionsSection() {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_recent_transactions2".tr,
            style: CustomTextStyles.labelLargeGray200_1,
          ),
          Text(
            "lbl_see_more".tr,
            style: CustomTextStyles.labelMediumAmber700,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 8.v,
          );
        },
        itemCount: controller
            .homepageModelObj.value.userprofilesectionItemList.value.length,
        itemBuilder: (context, index) {
          UserprofilesectionItemModel model = controller
              .homepageModelObj.value.userprofilesectionItemList.value[index];
          return UserprofilesectionItemWidget(
            model,
          );
        },
      ),
    );
  }
}
