import 'controller/parking_two_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:abu_s_application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ParkingTwoScreen extends GetWidget<ParkingTwoController> {
  const ParkingTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 4.v,
          ),
          child: Column(
            children: [
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_destination".tr,
                hintStyle: CustomTextStyles.bodyMediumGray40011,
                contentPadding: EdgeInsets.only(
                  top: 16.v,
                  right: 30.h,
                  bottom: 16.v,
                ),
                borderDecoration: SearchViewStyleHelper.fillGrayTL10,
                fillColor: appTheme.gray90024,
              ),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_my_parking_details".tr,
                  style: CustomTextStyles.labelLargeGray200_1,
                ),
              ),
              SizedBox(height: 10.v),
              SizedBox(
                height: 439.v,
                width: 353.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildStack(),
                    _buildAdd(),
                  ],
                ),
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
        text: "lbl_parking".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildContent() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 19.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 17.adaptSize,
              width: 17.adaptSize,
              margin: EdgeInsets.only(left: 92.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  width: 2.h,
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.red500,
                    appTheme.red700,
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(left: 76.h),
              child: Text(
                "lbl_nirvana_spot".tr,
                style: CustomTextStyles.bodySmallOnError,
              ),
            ),
            SizedBox(height: 8.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 17.adaptSize,
                  width: 17.adaptSize,
                  margin: EdgeInsets.only(
                    top: 61.v,
                    bottom: 19.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.onPrimary.withOpacity(1),
                      width: 2.h,
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.red500,
                        appTheme.red700,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 95.h,
                    top: 19.v,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 61.v,
                        width: 60.h,
                        padding: EdgeInsets.all(15.h),
                        decoration: AppDecoration.fillRedB.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder30,
                        ),
                        child: CustomIconButton(
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.gradientRedToRed,
                          alignment: Alignment.center,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSaveOnprimary,
                          ),
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "lbl_phoenix_avenue".tr,
                        style: CustomTextStyles.labelMediumOnError_1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 61.h,
                    bottom: 66.v,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                          border: Border.all(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            width: 2.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.red500,
                              appTheme.red700,
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "lbl_island_spot".tr,
                        style: CustomTextStyles.bodySmallOnError,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStack() {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 232.v,
        width: 353.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgContent,
              height: 232.v,
              width: 353.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
            _buildContent(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAdd() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.fillGray90004.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "lbl_phoenix_avenue".tr,
                    style: CustomTextStyles.labelLargeSemiBold_1,
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsOnprimary13x13,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "msg_1210_phoenix_avenue".tr,
                          style: CustomTextStyles.labelMediumOnPrimary10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                Divider(
                  color: appTheme.gray800,
                  indent: 1.h,
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    right: 47.h,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_floor".tr,
                            style: CustomTextStyles.bodySmallOnPrimary10,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "lbl_1st_floor".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_days".tr,
                              style: CustomTextStyles.bodySmallOnPrimary10,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "msg_sun_mon_tue_fri".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          bottom: 2.v,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "lbl_price".tr,
                              style: CustomTextStyles.bodySmallOnPrimary10,
                            ),
                            SizedBox(height: 4.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_43".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                  TextSpan(
                                    text: "lbl_h".tr,
                                    style:
                                        CustomTextStyles.bodySmallOnPrimary_1,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_block".tr,
                                style: CustomTextStyles.bodySmallOnPrimary10,
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "lbl_b_5".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 19.v),
            decoration: AppDecoration.fillGray90004.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_book_another_spot".tr,
                        style: CustomTextStyles.labelLargeSemiBold_1,
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: 200.h,
                        child: Text(
                          "msg_you_can_book_another".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallOnPrimary11,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  height: 33.v,
                  width: 110.h,
                  text: "lbl_add".tr,
                  margin: EdgeInsets.only(
                    top: 14.v,
                    bottom: 11.v,
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
