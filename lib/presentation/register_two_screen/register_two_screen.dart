import '../register_two_screen/widgets/userprofile3_item_widget.dart';
import 'controller/register_two_controller.dart';
import 'models/userprofile3_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterTwoScreen extends GetWidget<RegisterTwoController> {
  const RegisterTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 8.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 15.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: AnotherStepper(
                      iconHeight: 46,
                      iconWidth: 42,
                      stepperDirection: Axis.horizontal,
                      activeIndex: 0,
                      inverted: true,
                      stepperList: [
                        StepperData(
                          iconWidget: Column(
                            children: [
                              Container(
                                height: 15.adaptSize,
                                width: 15.adaptSize,
                                padding: EdgeInsets.all(2.h),
                                decoration: AppDecoration.gradientPrimaryToBlueA
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgIconOutlineCheck,
                                  height: 9.adaptSize,
                                  width: 9.adaptSize,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Container(
                                width: 42.h,
                                margin: EdgeInsets.only(top: 4.v),
                                child: Text(
                                  "msg_product_category".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmall10.copyWith(
                                    height: 1.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        StepperData(
                          iconWidget: Column(
                            children: [
                              Container(
                                height: 9.adaptSize,
                                width: 9.adaptSize,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 1.h,
                                  vertical: 2.v,
                                ),
                                decoration:
                                    AppDecoration.gradientPrimaryToBlueA,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgVector,
                                  height: 3.v,
                                  width: 5.h,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Container(
                                width: 48.h,
                                margin: EdgeInsets.only(top: 10.v),
                                child: Text(
                                  "msg_product_catalogue".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmall10.copyWith(
                                    height: 1.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        StepperData(
                          iconWidget: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 15.v,
                                  width: 53.h,
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgTelevisionBlueGray90007,
                                        height: 15.v,
                                        width: 53.h,
                                        alignment: Alignment.center,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconOutlineCheck,
                                        height: 9.adaptSize,
                                        width: 9.adaptSize,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 3.h),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: Text(
                                  "lbl_customize".tr,
                                  style: CustomTextStyles.bodySmall10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        StepperData(
                          iconWidget: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 15.v,
                                  width: 53.h,
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgTelevisionBlueGray90007,
                                        height: 15.v,
                                        width: 53.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 9.adaptSize,
                                          width: 9.adaptSize,
                                          margin: EdgeInsets.only(left: 2.h),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 1.h,
                                            vertical: 2.v,
                                          ),
                                          decoration:
                                              AppDecoration.fillBlueGray,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgVector,
                                            height: 3.v,
                                            width: 5.h,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: Text(
                                  "lbl_review".tr,
                                  style: CustomTextStyles.bodySmall10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        StepperData(
                          iconWidget: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                  margin: EdgeInsets.only(right: 9.h),
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgPlayBlueGray90007,
                                        height: 15.adaptSize,
                                        width: 15.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 9.adaptSize,
                                          width: 9.adaptSize,
                                          margin: EdgeInsets.only(right: 2.h),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 1.h,
                                            vertical: 2.v,
                                          ),
                                          decoration:
                                              AppDecoration.fillBlueGray,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgVector,
                                            height: 3.v,
                                            width: 5.h,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 41.h,
                                margin: EdgeInsets.only(top: 4.v),
                                child: Text(
                                  "lbl_payment_method".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmall10.copyWith(
                                    height: 1.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_special_deals_for".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildUserProfile(),
                  SizedBox(height: 23.v),
                  _buildFrame(),
                  SizedBox(height: 2.v),
                  _buildSubTotal(),
                  SizedBox(height: 30.v),
                  _buildFrame1(),
                ],
              ),
            ),
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
          top: 10.v,
          bottom: 13.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_cash_register".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 127.v,
          crossAxisCount: 3,
          mainAxisSpacing: 8.h,
          crossAxisSpacing: 8.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller
            .registerTwoModelObj.value.userprofile3ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile3ItemModel model = controller
              .registerTwoModelObj.value.userprofile3ItemList.value[index];
          return Userprofile3ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      decoration: AppDecoration.fillGray900051.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(right: 1.h),
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.outlineGray900231.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_description".tr,
                    style: CustomTextStyles.labelMediumPoppinsGray600,
                  ),
                ),
                Container(
                  width: 185.h,
                  margin: EdgeInsets.only(
                    left: 69.h,
                    right: 4.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_price".tr,
                        style: CustomTextStyles.labelMediumPoppinsGray600,
                      ),
                      Spacer(),
                      Text(
                        "lbl_qty".tr,
                        style: CustomTextStyles.labelMediumPoppinsGray600,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 29.h),
                        child: Text(
                          "lbl_sub_total".tr,
                          style: CustomTextStyles.labelMediumPoppinsGray600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "msg_louis_vuitton_bag".tr,
                    style: CustomTextStyles.labelLargePoppinsGray50011,
                  ),
                ),
                SizedBox(
                  width: 183.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_15_000".tr,
                        style: CustomTextStyles.labelLargePoppinsBluegray10008,
                      ),
                      Text(
                        "lbl_32".tr,
                        style: CustomTextStyles.labelLargePoppinsBluegray10008,
                      ),
                      Text(
                        "lbl_45_000".tr,
                        style: CustomTextStyles.labelLargePoppinsBluegray10008,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_acer_monitor".tr,
                  style: CustomTextStyles.labelLargePoppinsBluegray10008,
                ),
                Spacer(
                  flex: 40,
                ),
                Text(
                  "lbl_22_000".tr,
                  style: CustomTextStyles.labelLargePoppinsBluegray10008,
                ),
                Spacer(
                  flex: 26,
                ),
                Text(
                  "lbl_1".tr,
                  style: CustomTextStyles.labelLargePoppinsBluegray10008,
                ),
                Spacer(
                  flex: 33,
                ),
                Text(
                  "lbl_22_0002".tr,
                  style: CustomTextStyles.labelLargePoppinsBluegray10008,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 13.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 222.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_leather_bag".tr,
                        style: CustomTextStyles.labelLargePoppinsBluegray10008,
                      ),
                      Spacer(),
                      Text(
                        "lbl_100_000".tr,
                        style: CustomTextStyles.labelLargePoppinsBluegray10008,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 29.h),
                        child: Text(
                          "lbl_22".tr,
                          style:
                              CustomTextStyles.labelLargePoppinsBluegray10008,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "lbl_200_000".tr,
                  style: CustomTextStyles.labelLargePoppinsBluegray10008,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubTotal() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 4.h),
          padding: EdgeInsets.symmetric(vertical: 5.v),
          decoration: AppDecoration.fillGray900051.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "  ".tr,
                          ),
                          TextSpan(
                            text: "  ".tr,
                          ),
                          TextSpan(
                            text: "lbl_sub_total".tr,
                            style: CustomTextStyles
                                .labelLargePoppinsBluegray1000812,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "lbl_267_000".tr,
                      style: CustomTextStyles.labelLargePoppinsBluegray10008,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  right: 26.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_discount".tr,
                      style: CustomTextStyles.labelLargePoppinsGray50011,
                    ),
                    Container(
                      width: 33.h,
                      margin: EdgeInsets.only(left: 6.h),
                      padding: EdgeInsets.symmetric(horizontal: 6.h),
                      decoration: AppDecoration.fillCyan.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder2,
                      ),
                      child: Text(
                        "lbl_12".tr,
                        style: CustomTextStyles.labelLargePoppinsGray20001,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "lbl_15_0002".tr,
                      style: CustomTextStyles.labelLargePoppinsBluegray10008,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Container(
                margin: EdgeInsets.only(right: 1.h),
                padding: EdgeInsets.fromLTRB(15.h, 5.v, 15.h, 4.v),
                decoration: AppDecoration.outlineGray900232,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_tax".tr,
                      style: CustomTextStyles.labelLargePoppinsGray50011,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 13.h),
                      child: Text(
                        "lbl_9_000".tr,
                        style: CustomTextStyles.labelLargePoppinsBluegray10008,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "    ".tr,
                          ),
                          TextSpan(
                            text: "lbl_grand_total2".tr,
                            style: CustomTextStyles.labelLargePoppinsAmber600,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "lbl_213_000".tr,
                      style: CustomTextStyles.labelLargePoppinsGray20001Bold,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.v),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup1000001880,
          height: 7.v,
          width: 340.h,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.v),
            child: Text(
              "lbl_previous".tr,
              style: CustomTextStyles.titleSmallBold15,
            ),
          ),
          CustomElevatedButton(
            width: 187.h,
            text: "lbl_proceed".tr,
          ),
        ],
      ),
    );
  }
}
