import '../select_friends_screen/widgets/selectfriends_item_widget.dart';
import 'controller/select_friends_controller.dart';
import 'models/selectfriends_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SelectFriendsScreen extends GetWidget<SelectFriendsController> {
  const SelectFriendsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 9.v,
          ),
          child: Column(
            children: [
              _buildSixtySeven(),
              SizedBox(height: 30.v),
              _buildSelectFriends(),
              SizedBox(height: 53.v),
              CustomElevatedButton(
                text: "lbl_proceed".tr,
              ),
              SizedBox(height: 5.v),
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
        text: "lbl_select_contact".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtySeven() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.fillGray90024.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 131.h,
            padding: EdgeInsets.symmetric(
              horizontal: 21.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillPurple300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "msg_courtney_johnson".tr,
              style: CustomTextStyles.labelMediumOnPrimary10_1,
            ),
          ),
          CustomElevatedButton(
            height: 20.v,
            width: 77.h,
            text: "lbl_alex".tr,
            margin: EdgeInsets.only(left: 2.h),
            buttonStyle: CustomButtonStyles.fillPurple,
            buttonTextStyle: CustomTextStyles.labelMediumOnPrimary10_1,
          ),
          CustomElevatedButton(
            height: 20.v,
            width: 77.h,
            text: "lbl_eleanor".tr,
            margin: EdgeInsets.only(left: 2.h),
            buttonStyle: CustomButtonStyles.fillPurple,
            buttonTextStyle: CustomTextStyles.labelMediumOnPrimary10_1,
          ),
          Container(
            width: 51.h,
            margin: EdgeInsets.only(left: 2.h),
            padding: EdgeInsets.symmetric(vertical: 3.v),
            decoration: AppDecoration.fillPurple300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "lbl_arlene".tr,
              style: CustomTextStyles.labelMediumOnPrimary10_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectFriends() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_select_contact".tr,
          style: CustomTextStyles.labelLargeGray200_1,
        ),
        SizedBox(height: 11.v),
        Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 81.v,
              crossAxisCount: 4,
              mainAxisSpacing: 7.h,
              crossAxisSpacing: 7.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .selectFriendsModelObj.value.selectfriendsItemList.value.length,
            itemBuilder: (context, index) {
              SelectfriendsItemModel model = controller.selectFriendsModelObj
                  .value.selectfriendsItemList.value[index];
              return SelectfriendsItemWidget(
                model,
              );
            },
          ),
        ),
      ],
    );
  }
}
