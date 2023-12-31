import 'controller/sales_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_drop_down.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class SalesScreen extends GetWidget<SalesController> {
  const SalesScreen({Key? key})
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
            horizontal: 18.h,
            vertical: 30.v,
          ),
          child: Column(
            children: [
              _buildLinearAreaChart(),
              SizedBox(height: 26.v),
              _buildDuration(),
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
      height: 54.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 13.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_sales".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(20.h, 9.v, 20.h, 21.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLinearAreaChart() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              right: 7.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_5_987_34".tr,
                      style: CustomTextStyles.headlineLargeOnPrimary,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "lbl_december".tr,
                      style: CustomTextStyles.bodySmallGray40003,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 13.v,
                    bottom: 16.v,
                  ),
                  child: CustomIconButton(
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    decoration: IconButtonStyleHelper.fillGrayTL11,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup2019,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: Column(
              children: [
                Divider(
                  color: appTheme.gray90024,
                  indent: 8.h,
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 13.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_900".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_800".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_700".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_600".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_500".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_400".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_300".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_200".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "lbl_100".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup2046,
                      height: 194.v,
                      width: 327.h,
                      margin: EdgeInsets.only(left: 3.h),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDuration() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(vertical: 13.v),
            decoration: AppDecoration.outlineBlack900012.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 134.h,
                  margin: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_last_7_months".tr,
                            style: CustomTextStyles.labelSmallOnPrimary,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "lbl_income".tr,
                            style: CustomTextStyles.interGray40003,
                          ),
                        ],
                      ),
                      Container(
                        height: 11.adaptSize,
                        width: 11.adaptSize,
                        margin: EdgeInsets.only(bottom: 12.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillGray80003.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup2019,
                          height: 7.v,
                          width: 1.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  width: 166.h,
                  child: Divider(
                    color: appTheme.gray80003,
                  ),
                ),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 6.v),
                          child: Column(
                            children: [
                              Text(
                                "lbl_8000".tr,
                                style: CustomTextStyles.interOnPrimary,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_7000".tr,
                                style: CustomTextStyles.interOnPrimary,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_6000".tr,
                                style: CustomTextStyles.interOnPrimary,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_50002".tr,
                                style: CustomTextStyles.interOnPrimary,
                              ),
                              SizedBox(height: 3.v),
                              Text(
                                "lbl_4000".tr,
                                style: CustomTextStyles.interOnPrimary,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_3000".tr,
                                style: CustomTextStyles.interOnPrimary,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_2000".tr,
                                style: CustomTextStyles.interOnPrimary,
                              ),
                              SizedBox(height: 4.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "lbl_1000".tr,
                                  style: CustomTextStyles.interOnPrimary,
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "lbl_0".tr,
                                  style: CustomTextStyles.interOnPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2.h,
                            top: 5.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 83.v,
                                width: 121.h,
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: 121.h,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.h),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: fs.Svg(
                                              ImageConstant.imgGroup573,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height: 82.v,
                                              child: VerticalDivider(
                                                width: 3.h,
                                                thickness: 3.v,
                                                color: appTheme.amber700,
                                                indent: 20.h,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 13.h),
                                              child: SizedBox(
                                                height: 82.v,
                                                child: VerticalDivider(
                                                  width: 3.h,
                                                  thickness: 3.v,
                                                  color: appTheme.amber700,
                                                  indent: 41.h,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 13.h),
                                              child: SizedBox(
                                                height: 82.v,
                                                child: VerticalDivider(
                                                  width: 3.h,
                                                  thickness: 3.v,
                                                  color: appTheme.amber700,
                                                  indent: 41.h,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 13.h),
                                              child: SizedBox(
                                                height: 82.v,
                                                child: VerticalDivider(
                                                  width: 3.h,
                                                  thickness: 3.v,
                                                  color: appTheme.amber700,
                                                  indent: 62.h,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            SizedBox(
                                              height: 82.v,
                                              child: VerticalDivider(
                                                width: 3.h,
                                                thickness: 3.v,
                                                color: appTheme.amber700,
                                                indent: 20.h,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 13.h,
                                                right: 3.h,
                                              ),
                                              child: SizedBox(
                                                height: 82.v,
                                                child: VerticalDivider(
                                                  width: 3.h,
                                                  thickness: 3.v,
                                                  color: appTheme.amber700,
                                                  indent: 10.h,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 43.h),
                                        child: SizedBox(
                                          height: 82.v,
                                          child: VerticalDivider(
                                            width: 3.h,
                                            thickness: 3.v,
                                            color: appTheme.amber700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Container(
                                width: 107.h,
                                margin: EdgeInsets.only(
                                  left: 4.h,
                                  right: 9.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lbl_jan".tr,
                                      style: CustomTextStyles
                                          .interOnPrimaryRegular,
                                    ),
                                    Text(
                                      "lbl_feb".tr,
                                      style: CustomTextStyles
                                          .interOnPrimaryRegular,
                                    ),
                                    Text(
                                      "lbl_mar".tr,
                                      style: CustomTextStyles
                                          .interOnPrimaryRegular,
                                    ),
                                    Text(
                                      "lbl_apr".tr,
                                      style: CustomTextStyles
                                          .interOnPrimaryRegular,
                                    ),
                                    Text(
                                      "lbl_may".tr,
                                      style: CustomTextStyles
                                          .interOnPrimaryRegular,
                                    ),
                                    Text(
                                      "lbl_jun".tr,
                                      style: CustomTextStyles
                                          .interOnPrimaryRegular,
                                    ),
                                    Text(
                                      "lbl_jul".tr,
                                      style: CustomTextStyles
                                          .interOnPrimaryRegular,
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
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.fillGray90009.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 139.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_stats".tr,
                        style: CustomTextStyles.labelSmallOnPrimary,
                      ),
                      CustomDropDown(
                        width: 30.h,
                        hintText: "lbl_2023".tr,
                        hintStyle: CustomTextStyles.interOnPrimaryMedium,
                        items: controller
                            .salesModelObj.value.dropdownItemList!.value,
                        borderDecoration: DropDownStyleHelper.fillGrayTL2,
                        fillColor: appTheme.gray90023,
                        onChanged: (value) {
                          controller.onSelected(value);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                _buildPrice(
                  priceText: "lbl_120_923".tr,
                  totalEarnedText: "msg_successful_transactions".tr,
                ),
                SizedBox(height: 7.v),
                _buildPrice(
                  priceText: "lbl_467_573".tr,
                  totalEarnedText: "lbl_total_earned".tr,
                ),
                SizedBox(height: 7.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPrice({
    required String priceText,
    required String totalEarnedText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 37.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            priceText,
            style: CustomTextStyles.titleSmallGray20001Bold_1.copyWith(
              color: appTheme.gray20001,
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            totalEarnedText,
            style: CustomTextStyles.interOnPrimaryRegular7.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
