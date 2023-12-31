import '../refueling_screen/widgets/gasstationinfo_item_widget.dart';
import '../refueling_screen/widgets/gasstationlist_item_widget.dart';
import 'controller/refueling_controller.dart';
import 'models/gasstationinfo_item_model.dart';
import 'models/gasstationlist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RefuelingScreen extends GetWidget<RefuelingController> {
  const RefuelingScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 10.v),
          child: Column(
            children: [
              _buildNearestGasStationFrame(),
              SizedBox(height: 19.v),
              _buildGasStationList(),
              SizedBox(height: 23.v),
              _buildFillUpYourTankStack(),
              SizedBox(height: 28.v),
              _buildHistoryFrame(),
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
      title: AppbarSubtitleOne(
        text: "lbl_refueling".tr,
        margin: EdgeInsets.only(left: 125.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildNearestGasStationFrame() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 27.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_nearest_gas_station".tr,
            style: CustomTextStyles.labelLargeGray200_1,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgContrastOnprimary,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGasStationList() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 112.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 20.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 8.h,
              );
            },
            itemCount: controller
                .refuelingModelObj.value.gasstationlistItemList.value.length,
            itemBuilder: (context, index) {
              GasstationlistItemModel model = controller
                  .refuelingModelObj.value.gasstationlistItemList.value[index];
              return GasstationlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFillUpYourTankStack() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 121.v,
        width: 353.h,
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.gradientOrangeToAmber.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_fill_up_your_tank".tr,
                      style: CustomTextStyles.titleMediumBold_1,
                    ),
                    SizedBox(height: 3.v),
                    SizedBox(
                      width: 153.h,
                      child: Text(
                        "msg_buy_more_than_12".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelMediumYellow100.copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Row(
                      children: [
                        Text(
                          "lbl_learn_more".tr,
                          style: CustomTextStyles.labelLargePrimary,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector10x5,
                          height: 10.v,
                          width: 5.h,
                          margin: EdgeInsets.only(
                            left: 19.h,
                            top: 2.v,
                            bottom: 2.v,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgPngitem5303089,
              height: 62.v,
              width: 145.h,
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHistoryFrame() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: Row(
                children: [
                  Text(
                    "lbl_history".tr,
                    style: CustomTextStyles.labelLargeGray200_1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 256.h),
                    child: Text(
                      "lbl_see_more".tr,
                      style: CustomTextStyles.labelMediumAmber700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: Obx(
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
                  itemCount: controller.refuelingModelObj.value
                      .gasstationinfoItemList.value.length,
                  itemBuilder: (context, index) {
                    GasstationinfoItemModel model = controller.refuelingModelObj
                        .value.gasstationinfoItemList.value[index];
                    return GasstationinfoItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
