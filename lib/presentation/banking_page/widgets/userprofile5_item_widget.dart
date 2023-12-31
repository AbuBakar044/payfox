import '../controller/banking_controller.dart';
import '../models/userprofile5_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  Userprofile5ItemWidget(
    this.userprofile5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile5ItemModel userprofile5ItemModelObj;

  var controller = Get.find<BankingController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158.v,
      width: 373.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
                bottom: 1.v,
              ),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                begin: Alignment(0, 0.43),
                end: Alignment(1, 0.5),
                colors: [
                  theme.colorScheme.onPrimary.withOpacity(0.2),
                  appTheme.gray505e.withOpacity(0.2),
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
              child: Container(
                height: 158.v,
                width: 285.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray90005,
                  borderRadius: BorderRadius.circular(
                    14.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 158.v,
                  width: 285.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: userprofile5ItemModelObj.lineImage!.value,
                          height: 95.v,
                          width: 261.h,
                          radius: BorderRadius.circular(
                            14.h,
                          ),
                          alignment: Alignment.topRight,
                        ),
                      ),
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              userprofile5ItemModelObj.rectangleImage!.value,
                          height: 48.v,
                          width: 282.h,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                      Obx(
                        () => CustomImageView(
                          imagePath: userprofile5ItemModelObj.noiseImage!.value,
                          height: 158.v,
                          width: 285.h,
                          radius: BorderRadius.circular(
                            14.h,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 22.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Opacity(
                                    opacity: 0.8,
                                    child: Obx(
                                      () => CustomImageView(
                                        imagePath: userprofile5ItemModelObj
                                            .mastercardImage!.value,
                                        height: 16.v,
                                        width: 30.h,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVisa,
                                    height: 11.v,
                                    width: 38.h,
                                    radius: BorderRadius.circular(
                                      5.h,
                                    ),
                                    margin: EdgeInsets.only(bottom: 4.v),
                                  ),
                                ],
                              ),
                              SizedBox(height: 45.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  decoration: AppDecoration.outlineGray900281,
                                  child: Obx(
                                    () => Text(
                                      userprofile5ItemModelObj
                                          .cardNumberText!.value,
                                      style: CustomTextStyles.titleMedium18,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25.v),
                              SizedBox(
                                width: 245.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 6.v),
                                      decoration:
                                          AppDecoration.outlineGray900091,
                                      child: Obx(
                                        () => Text(
                                          userprofile5ItemModelObj
                                              .cardHolderText!.value,
                                          style: CustomTextStyles
                                              .labelSmallOnPrimary_1,
                                        ),
                                      ),
                                    ),
                                    Spacer(
                                      flex: 26,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 7.v),
                                      decoration:
                                          AppDecoration.outlineBlack900011,
                                      child: Obx(
                                        () => Text(
                                          userprofile5ItemModelObj
                                              .expiryDateText!.value,
                                          style: CustomTextStyles
                                              .labelSmallOnPrimary_1,
                                        ),
                                      ),
                                    ),
                                    Spacer(
                                      flex: 73,
                                    ),
                                    Opacity(
                                      opacity: 0.7,
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgGridOnprimary,
                                        height: 19.v,
                                        width: 29.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 127.h,
                    top: 15.v,
                    bottom: 15.v,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVisa,
                        height: 10.v,
                        width: 34.h,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 97.v),
                      SizedBox(
                        width: 116.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 5.v,
                                bottom: 3.v,
                              ),
                              decoration: AppDecoration.outlineGray90001,
                              child: Obx(
                                () => Text(
                                  userprofile5ItemModelObj
                                      .expiryDateText2!.value,
                                  style: CustomTextStyles.labelSmallGray100,
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.7,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGridOnprimary,
                                height: 19.v,
                                width: 25.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
