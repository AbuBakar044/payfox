import 'controller/petro_eco_gas_station_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_drop_down.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PetroEcoGasStationScreen extends GetWidget<PetroEcoGasStationController> {
  const PetroEcoGasStationScreen({Key? key})
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
            vertical: 21.v,
          ),
          child: Column(
            children: [
              _buildEnterAmountGalloonsFrame(),
              SizedBox(height: 12.v),
              _buildPriceFrame(),
              SizedBox(height: 45.v),
              _buildPaySixtyTwo(),
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
        text: "msg_petro_eco_gas_station2".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterAmountGalloonsFrame() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_enter_amount_galloons".tr,
          style: CustomTextStyles.labelLargeGray200,
        ),
        SizedBox(height: 4.v),
        Container(
          decoration: AppDecoration.fillGray90021.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 12.v,
                  bottom: 14.v,
                ),
                child: Text(
                  "lbl_20_000".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              CustomDropDown(
                width: 61.h,
                hintText: "lbl_usd".tr,
                hintStyle: CustomTextStyles.labelMediumGray200,
                items: controller
                    .petroEcoGasStationModelObj.value.dropdownItemList!.value,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 15.v,
                ),
                borderDecoration: DropDownStyleHelper.fillBlueGray,
                fillColor: appTheme.blueGray90002,
                onChanged: (value) {
                  controller.onSelected(value);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPriceFrame() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 63.h,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillGray90009.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            "lbl_50_002".tr,
            style: theme.textTheme.labelMedium,
          ),
        ),
        Container(
          width: 64.h,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillGray90009.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            "lbl_100_002".tr,
            style: theme.textTheme.labelMedium,
          ),
        ),
        Container(
          width: 64.h,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillGray90009.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            "lbl_150_002".tr,
            style: theme.textTheme.labelMedium,
          ),
        ),
        Container(
          width: 65.h,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillGray90009.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            "lbl_200_002".tr,
            style: theme.textTheme.labelMedium,
          ),
        ),
        Container(
          width: 64.h,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillGray90009.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            "lbl_250_00".tr,
            style: theme.textTheme.labelMedium,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPaySixtyTwo() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 29.v,
      ),
      decoration: AppDecoration.fillGray90019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_20_000".tr,
                        style: CustomTextStyles.headlineSmallInter,
                      ),
                      TextSpan(
                        text: "lbl7".tr,
                        style: CustomTextStyles.bodyLargeOnPrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 7.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_120_liters".tr,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            width: 260.h,
            margin: EdgeInsets.only(
              left: 1.h,
              right: 37.h,
            ),
            child: Text(
              "msg_you_re_all_set_to".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelMediumGray50b2,
            ),
          ),
          SizedBox(height: 20.v),
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_pay".tr,
            margin: EdgeInsets.only(left: 1.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
