import '../register_screen/widgets/foodcomponent_item_widget.dart';
import 'controller/register_controller.dart';
import 'models/foodcomponent_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  const RegisterScreen({Key? key})
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
            horizontal: 16.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.h),
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
                            decoration:
                                AppDecoration.gradientPrimaryToBlueA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
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
                            decoration: AppDecoration.fillBlueGray,
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
                                      decoration: AppDecoration.fillBlueGray,
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
                                      decoration: AppDecoration.fillBlueGray,
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
              SizedBox(height: 37.v),
              _buildFrame(),
              SizedBox(height: 52.v),
              CustomElevatedButton(
                text: "lbl_proceed".tr,
                margin: EdgeInsets.only(right: 7.h),
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
        text: "lbl_cash_register".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
      margin: EdgeInsets.only(right: 7.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_product_category".tr,
            style: CustomTextStyles.labelLargeSemiBold12,
          ),
          SizedBox(height: 10.v),
          Obx(
            () => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 99.v,
                crossAxisCount: 3,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 8.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller
                  .registerModelObj.value.foodcomponentItemList.value.length,
              itemBuilder: (context, index) {
                FoodcomponentItemModel model = controller
                    .registerModelObj.value.foodcomponentItemList.value[index];
                return FoodcomponentItemWidget(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
