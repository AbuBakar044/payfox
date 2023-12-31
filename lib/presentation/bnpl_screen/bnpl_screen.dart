import '../bnpl_screen/widgets/userprofile_item_widget.dart';
import 'controller/bnpl_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BnplScreen extends GetWidget<BnplController> {
  const BnplScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 13.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 20.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildFrameRow(),
                        SizedBox(height: 31.v),
                        _buildFrameColumn(),
                        SizedBox(height: 26.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "msg_payment_allocation".tr,
                            style: CustomTextStyles.labelLargeGray200_1,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        _buildFirstPaymentColumn(),
                        SizedBox(height: 12.v),
                        _buildVideoCameraColumn(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildProceed(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 54.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_buy_now_pay_later".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_order_no2".tr,
                style: CustomTextStyles.bodySmallOnPrimary,
              ),
              TextSpan(
                text: "lbl".tr,
                style: CustomTextStyles.labelLargeOnPrimarySemiBold12,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(
            "msg_gj34je6738_hdj38h".tr,
            style: CustomTextStyles.titleSmallAmber700_1,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgUpload,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_payment_methods".tr,
          style: CustomTextStyles.labelLargeGray200_1,
        ),
        SizedBox(height: 10.v),
        Obx(
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
            itemCount:
                controller.bnplModelObj.value.userprofileItemList.value.length,
            itemBuilder: (context, index) {
              UserprofileItemModel model = controller
                  .bnplModelObj.value.userprofileItemList.value[index];
              return UserprofileItemWidget(
                model,
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFirstPaymentColumn() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.fillGray90008.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStarOneQuarterSvgrepoCom,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 3.v,
                  bottom: 4.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  children: [
                    Text(
                      "lbl_first_payment".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "msg_due_20_dec_2023".tr,
                      style: CustomTextStyles.bodySmallOnPrimary10,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "lbl_7_025".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStarOneQuarterSvgrepoCom,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 3.v,
                  bottom: 4.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_second_payment".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "msg_due_20_jan_2024".tr,
                      style: CustomTextStyles.bodySmallOnPrimary10,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "lbl_7_025".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath:
                    ImageConstant.imgStarOneQuarterSvgrepoComDeepOrangeA400,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 3.v,
                  bottom: 4.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_third_payment".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "msg_due_20_jan_2024".tr,
                      style: CustomTextStyles.bodySmallOnPrimary10,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "lbl_7_025".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant
                    .imgStarOneQuarterSvgrepoComDeepOrangeA40024x24,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 3.v,
                  bottom: 4.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_fourth_payment".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "msg_due_20_jan_2024".tr,
                      style: CustomTextStyles.bodySmallOnPrimary10,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "lbl_7_025".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVideoCameraColumn() {
    return Container(
      width: 353.h,
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillGray90008.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVideoCamera,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "msg_before_proceeding".tr,
                    style: CustomTextStyles.labelLargeSemiBold_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 4.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.lightGreenA200,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_acknowledge_the".tr,
                  style: CustomTextStyles.labelLargeBluegray10002,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 4.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.lightGreenA200,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_check_the_payment".tr,
                  style: CustomTextStyles.labelLargeBluegray10002,
                ),
              ),
            ],
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(right: 52.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 4.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.lightGreenA200,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "msg_this_activity_doesn_t".tr,
                    style: CustomTextStyles.labelLargeBluegray10002,
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
  Widget _buildProceed() {
    return CustomElevatedButton(
      text: "lbl_proceed".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 41.v,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToBlueADecoration,
      buttonTextStyle: CustomTextStyles.labelLargeSemiBold_1,
    );
  }
}
