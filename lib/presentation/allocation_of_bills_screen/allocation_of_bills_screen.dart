import '../allocation_of_bills_screen/widgets/userprofile10_item_widget.dart';
import '../allocation_of_bills_screen/widgets/userprofile11_item_widget.dart';
import 'controller/allocation_of_bills_controller.dart';
import 'models/userprofile10_item_model.dart';
import 'models/userprofile11_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AllocationOfBillsScreen extends GetWidget<AllocationOfBillsController> {
  const AllocationOfBillsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                right: 14.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  _buildTotalAmountTo(),
                  SizedBox(height: 42.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_allocate_bills".tr,
                      style: CustomTextStyles.labelLargeGray200_1,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildUserProfile(),
                  SizedBox(height: 36.v),
                  CustomElevatedButton(
                    text: "lbl_send_request".tr,
                    margin: EdgeInsets.only(right: 8.h),
                  ),
                ],
              ),
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
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_allocation_of_bill".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalAmountTo() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 83.h,
            right: 76.h,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 31.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.back.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 7.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "msg_total_amount_to".tr,
                      style: CustomTextStyles.labelLargeOnPrimary12,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEdit,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(left: 5.h),
                  ),
                ],
              ),
              SizedBox(height: 6.v),
              Text(
                "lbl_28_100".tr,
                style: CustomTextStyles.headlineSmallGray20001,
              ),
            ],
          ),
        ),
        SizedBox(height: 17.v),
        SizedBox(
          height: 80.v,
          child: Obx(
            () => ListView.separated(
              padding: EdgeInsets.only(left: 6.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 8.h,
                );
              },
              itemCount: controller.allocationOfBillsModelObj.value
                  .userprofile10ItemList.value.length,
              itemBuilder: (context, index) {
                Userprofile10ItemModel model = controller
                    .allocationOfBillsModelObj
                    .value
                    .userprofile10ItemList
                    .value[index];
                return Userprofile10ItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 12.v,
            );
          },
          itemCount: controller.allocationOfBillsModelObj.value
              .userprofile11ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofile11ItemModel model = controller.allocationOfBillsModelObj
                .value.userprofile11ItemList.value[index];
            return Userprofile11ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
