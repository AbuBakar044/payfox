import 'controller/request_money_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RequestMoneyScreen extends GetWidget<RequestMoneyController> {
  const RequestMoneyScreen({Key? key})
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
            vertical: 35.v,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 103.v,
                width: 110.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 15.v,
                        ),
                        decoration:
                            AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse107,
                              height: 46.adaptSize,
                              width: 46.adaptSize,
                              radius: BorderRadius.circular(
                                23.h,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "lbl_dianne_russell".tr,
                              style: CustomTextStyles.labelLargeBluegray10007,
                            ),
                            SizedBox(height: 2.v),
                          ],
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      decoration: IconButtonStyleHelper.fillPurple,
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgQrcode,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 34.v),
              Text(
                "msg_requested_amount".tr,
                style: CustomTextStyles.labelLargeOnPrimary12,
              ),
              SizedBox(height: 15.v),
              _buildFrame(),
              SizedBox(height: 44.v),
              CustomTextFormField(
                controller: controller.messageController,
                hintText: "msg_write_a_message".tr,
                textInputAction: TextInputAction.done,
                maxLines: 6,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 17.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGrayTL10,
                fillColor: appTheme.gray90005,
              ),
              SizedBox(height: 45.v),
              CustomElevatedButton(
                text: "lbl_request".tr,
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
        text: "lbl_request_money".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 38.h,
              right: 41.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "lbl_usd".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_1,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 6.v,
                  width: 11.h,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 8.v,
                    bottom: 11.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child: Text(
                    "lbl_20_000_00".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Divider(
            color: appTheme.gray90016,
          ),
        ],
      ),
    );
  }
}
