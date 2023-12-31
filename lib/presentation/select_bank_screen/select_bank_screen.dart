import '../select_bank_screen/widgets/viewhierarchy1_item_widget.dart';
import 'controller/select_bank_controller.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_search_view.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SelectBankScreen extends GetWidget<SelectBankController> {
  const SelectBankScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "msg_your_recent_banks".tr,
                    style: CustomTextStyles.labelLargeGray200_1,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              _buildCurrentMobileBank(),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "msg_search_recent_transactions".tr,
                  hintStyle: CustomTextStyles.bodyMediumPoppinsBluegray40001,
                ),
              ),
              SizedBox(height: 16.v),
              _buildViewHierarchy(),
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
        text: "lbl_select_bank".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildCurrentMobileBank() {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillGray90024.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBankOfAmerica,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "lbl_bank_of_america".tr,
                      style: CustomTextStyles.labelMediumBluegray10007,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: CustomTextFormField(
                  width: 92.h,
                  controller: controller.currentMobileBankController,
                  hintText: "lbl_wave_bank".tr,
                  hintStyle: CustomTextStyles.labelMediumBluegray10007,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(-46.h, 14.v, 26.h, 30.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCurrentMobileBank,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 89.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 19.h,
                    top: 38.v,
                    bottom: 38.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL5,
                  fillColor: appTheme.gray90024,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8.h),
                decoration: AppDecoration.fillGray90024.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkGreen900,
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                    ),
                    SizedBox(height: 1.v),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCitibankSquared,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          margin: EdgeInsets.only(left: 1.h),
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "lbl_citi_bank".tr,
                          style: CustomTextStyles.labelMediumBluegray10007,
                        ),
                      ],
                    ),
                    SizedBox(height: 15.v),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: CustomTextFormField(
                  width: 92.h,
                  controller: controller.wellsfargoController,
                  hintText: "lbl_wells_fargo2".tr,
                  hintStyle: CustomTextStyles.labelMediumBluegray10007,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(-47.h, 14.v, 26.h, 30.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgWellsfargo,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 89.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 18.h,
                    top: 38.v,
                    bottom: 38.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL5,
                  fillColor: appTheme.gray90024,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
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
          itemCount: controller
              .selectBankModelObj.value.viewhierarchy1ItemList.value.length,
          itemBuilder: (context, index) {
            Viewhierarchy1ItemModel model = controller
                .selectBankModelObj.value.viewhierarchy1ItemList.value[index];
            return Viewhierarchy1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
