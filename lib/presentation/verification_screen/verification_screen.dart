import 'controller/verification_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_button.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class VerificationScreen extends GetWidget<VerificationController> {
  const VerificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 24.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 8.v,
                width: 353.h,
                decoration: BoxDecoration(
                  color: appTheme.gray90019,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                  child: LinearProgressIndicator(
                    value: 0.39,
                    backgroundColor: appTheme.gray90019,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      theme.colorScheme.onPrimary.withOpacity(1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              Text(
                "lbl_liveness_check".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 8.v),
              Text(
                "msg_complete_a_quick".tr,
                style: CustomTextStyles.labelMediumBluegray10004,
              ),
              SizedBox(height: 88.v),
              _buildCircleImage(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildScan(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray9000532x32,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.fromLTRB(20.h, 15.v, 20.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCircleImage() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 277.v,
        width: 289.h,
        padding: EdgeInsets.symmetric(
          horizontal: 46.h,
          vertical: 36.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup9,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgEllipse97,
          height: 197.adaptSize,
          width: 197.adaptSize,
          radius: BorderRadius.circular(
            98.h,
          ),
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScan() {
    return Container(
      margin: EdgeInsets.only(
        left: 47.h,
        right: 51.h,
        bottom: 14.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Container(
        decoration: AppDecoration.fillPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomElevatedButton(
              height: 29.v,
              width: 83.h,
              text: "lbl_scan".tr,
              margin: EdgeInsets.only(
                top: 25.v,
                bottom: 18.v,
              ),
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles.gradientPurpleToBlueADecoration,
              buttonTextStyle: CustomTextStyles.titleSmallSemiBold,
            ),
            Container(
              padding: EdgeInsets.all(3.h),
              decoration: AppDecoration.outlineGray20001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder35,
              ),
              child: Container(
                height: 56.adaptSize,
                width: 56.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.gray20001,
                  borderRadius: BorderRadius.circular(
                    28.h,
                  ),
                  border: Border.all(
                    color: appTheme.gray20001,
                    width: 1.h,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 32.v,
                bottom: 22.v,
              ),
              child: Text(
                "lbl_upload".tr,
                style: CustomTextStyles.titleSmallSemiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
