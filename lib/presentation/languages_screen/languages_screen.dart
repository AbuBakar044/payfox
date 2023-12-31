import 'controller/languages_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_radio_button.dart';
import 'package:abu_s_application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LanguagesScreen extends GetWidget<LanguagesController> {
  const LanguagesScreen({Key? key})
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
            horizontal: 19.h,
            vertical: 17.v,
          ),
          child: Column(
            children: [
              CustomSearchView(
                controller: controller.searchController,
                hintText: "msg_search_languages".tr,
                contentPadding: EdgeInsets.only(
                  top: 17.v,
                  right: 30.h,
                  bottom: 17.v,
                ),
                borderDecoration: SearchViewStyleHelper.fillGrayTL101,
                fillColor: appTheme.gray90015,
              ),
              SizedBox(height: 36.v),
              _buildRadioGroup(),
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
        text: "lbl_languages".tr,
        margin: EdgeInsets.only(left: 124.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRadioGroup() {
    return Obx(
      () => Column(
        children: [
          CustomRadioButton(
            width: 354.h,
            text: "lbl_english".tr,
            value: controller.languagesModelObj.value.radioList.value[0],
            groupValue: controller.radioGroup.value,
            padding: EdgeInsets.symmetric(vertical: 3.v),
            isRightCheck: true,
            onChange: (value) {
              controller.radioGroup.value = value;
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: CustomRadioButton(
              width: 354.h,
              text: "lbl_french".tr,
              value: controller.languagesModelObj.value.radioList.value[1],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 2.v),
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: CustomRadioButton(
              width: 354.h,
              text: "lbl_spanish".tr,
              value: controller.languagesModelObj.value.radioList.value[2],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 3.v),
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: CustomRadioButton(
              width: 354.h,
              text: "lbl_japanese".tr,
              value: controller.languagesModelObj.value.radioList.value[3],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 3.v),
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: CustomRadioButton(
              width: 354.h,
              text: "lbl_russia".tr,
              value: controller.languagesModelObj.value.radioList.value[4],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: CustomRadioButton(
              width: 354.h,
              text: "lbl_korean".tr,
              value: controller.languagesModelObj.value.radioList.value[5],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 2.v),
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: CustomRadioButton(
              width: 354.h,
              text: "lbl_ukraine".tr,
              value: controller.languagesModelObj.value.radioList.value[6],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: CustomRadioButton(
              width: 354.h,
              text: "lbl_chinese".tr,
              value: controller.languagesModelObj.value.radioList.value[7],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
