import 'controller/split_bills_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_drop_down.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SplitBillsScreen extends GetWidget<SplitBillsController> {
  const SplitBillsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              _buildToppngOne(),
              SizedBox(height: 8.v),
              _buildProductDetails(),
              SizedBox(height: 52.v),
              CustomElevatedButton(
                text: "lbl_split_bills".tr,
                buttonStyle: CustomButtonStyles.none,
                decoration: CustomButtonStyles.gradientPrimaryToBlueADecoration,
                buttonTextStyle: CustomTextStyles.labelLargeSemiBold_1,
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
      height: 54.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_product_details".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildToppngOne() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillGray900051.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 81.v,
            width: 95.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgToppng1,
              height: 58.v,
              width: 78.h,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_luious_vuitton_leather".tr,
                  style: CustomTextStyles.labelLargePoppinsGray300,
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    Text(
                      "lbl_25_6002".tr,
                      style: CustomTextStyles.titleMediumPoppins,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 13.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "lbl_25_6002".tr,
                        style: CustomTextStyles.labelMediumPoppinsGray40005
                            .copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 3.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        "lbl_12_off".tr,
                        style: CustomTextStyles.labelMediumPoppinsCyan500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    CustomDropDown(
                      width: 50.h,
                      hintText: "lbl_l".tr,
                      hintStyle: CustomTextStyles.titleSmallPoppins,
                      items: controller
                          .splitBillsModelObj.value.dropdownItemList!.value,
                      onChanged: (value) {
                        controller.onSelected(value);
                      },
                    ),
                    Container(
                      width: 68.h,
                      margin: EdgeInsets.only(left: 20.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.outlineErrorContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPlusGray60002,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 4.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              bottom: 1.v,
                            ),
                            child: Text(
                              "lbl_1".tr,
                              style: CustomTextStyles.titleSmallPoppins,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowDownGray60002,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              top: 3.v,
                              bottom: 4.v,
                            ),
                          ),
                        ],
                      ),
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
  Widget _buildProductDetails() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillGray900051.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: CustomTextFormField(
              controller: controller.productDetailsController,
              hintText: "lbl_product_details".tr,
              hintStyle: CustomTextStyles.titleSmallPoppinsGray20001SemiBold,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.underLineGray,
              filled: false,
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_total_price".tr,
                  style: CustomTextStyles.bodyMediumPoppinsGray50005,
                ),
                Text(
                  "lbl_25_600".tr,
                  style: CustomTextStyles.labelLargePoppinsGray20001_1,
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 3.h,
            ),
            child: _buildDeliveryFee(
              deliveryFeeText: "lbl_discount2".tr,
              priceText: "lbl_0".tr,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 3.h,
            ),
            child: _buildDeliveryFee(
              deliveryFeeText: "lbl_delivery_fee".tr,
              priceText: "lbl_2_500".tr,
            ),
          ),
          SizedBox(height: 12.v),
          Divider(
            color: appTheme.gray90014,
            indent: 6.h,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_total".tr,
                  style: CustomTextStyles.titleSmallPoppinsGray20001,
                ),
                Text(
                  "lbl_28_100".tr,
                  style: CustomTextStyles.titleSmallPoppinsGray20001,
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDeliveryFee({
    required String deliveryFeeText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          deliveryFeeText,
          style: CustomTextStyles.bodyMediumPoppinsGray50005.copyWith(
            color: appTheme.gray50005,
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.labelLargePoppinsGray20001_1.copyWith(
            color: appTheme.gray20001,
          ),
        ),
      ],
    );
  }
}
