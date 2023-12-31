import 'controller/my_referrals_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyReferralsScreen extends GetWidget<MyReferralsController> {
  const MyReferralsScreen({Key? key})
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
            horizontal: 19.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [
              _buildUserStack(),
              SizedBox(height: 16.v),
              _buildYourReferralCodeColumn(),
              SizedBox(height: 16.v),
              _buildClaimColumn(),
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
        text: "lbl_my_referrals".tr,
        margin: EdgeInsets.only(left: 121.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserStack() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray90025,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 102.v,
        width: 353.h,
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 22.v,
        ),
        decoration: AppDecoration.fillGray90025.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUserCyan500,
              height: 54.v,
              width: 45.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 10.h),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                width: 135.h,
                child: Text(
                  "msg_you_don_t_have_any".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmall15.copyWith(
                    height: 1.67,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildYourReferralCodeColumn() {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillGray90025.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_your_referral_code".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 11.v),
          SizedBox(
            height: 42.v,
            width: 313.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 40.v,
                    width: 313.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray90023,
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 229.h,
                          child: Text(
                            "msg_rcmuy2fnorfpt5m".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmall12,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgComputer,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 35.h,
                          bottom: 14.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_copy_the_code_above".tr,
            style: CustomTextStyles.labelMediumCyan500,
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClaimColumn() {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray90018.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 20.v),
          Text(
            "lbl_daily_rewards".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 304.h,
            child: Text(
              "msg_earn_daily_points".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelMediumBluegray100,
            ),
          ),
          SizedBox(height: 24.v),
          CustomImageView(
            imagePath: ImageConstant.imgPngwing1,
            height: 160.v,
            width: 154.h,
          ),
          SizedBox(height: 33.v),
          CustomElevatedButton(
            height: 44.v,
            text: "lbl_claim".tr,
            margin: EdgeInsets.only(
              left: 10.h,
              right: 8.h,
            ),
            buttonStyle: CustomButtonStyles.fillAmber,
          ),
        ],
      ),
    );
  }
}
