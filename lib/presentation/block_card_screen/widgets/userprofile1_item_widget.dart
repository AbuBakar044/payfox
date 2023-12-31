import '../controller/block_card_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<BlockCardController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 167.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.blueGray90005,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 94.v,
          width: 167.h,
          decoration: AppDecoration.outline.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLine8,
                height: 57.v,
                width: 153.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                alignment: Alignment.topRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLine8,
                height: 52.v,
                width: 143.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                alignment: Alignment.topRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLine8,
                height: 46.v,
                width: 134.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                alignment: Alignment.topRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLine8,
                height: 41.v,
                width: 127.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                alignment: Alignment.topRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLine8,
                height: 37.v,
                width: 122.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                alignment: Alignment.topRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLine8,
                height: 32.v,
                width: 112.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                alignment: Alignment.topRight,
              ),
              Obx(
                () => CustomImageView(
                  imagePath: userprofile1ItemModelObj.cardImage7!.value,
                  height: 28.v,
                  width: 166.h,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 9.h,
                    bottom: 36.v,
                  ),
                  decoration: AppDecoration.outlineGray90028,
                  child: Obx(
                    () => Text(
                      userprofile1ItemModelObj.cardText!.value,
                      style: CustomTextStyles.labelMediumOnPrimary_1,
                    ),
                  ),
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath: userprofile1ItemModelObj.cardImage8!.value,
                  height: 94.v,
                  width: 167.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(9.h, 73.v, 13.h, 8.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 4.v),
                        decoration: AppDecoration.outlineGray90009,
                        child: Obx(
                          () => Text(
                            userprofile1ItemModelObj.userName!.value,
                            style: CustomTextStyles.interOnPrimaryMedium5,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 18.h,
                          bottom: 4.v,
                        ),
                        decoration: AppDecoration.outlineBlack,
                        child: Obx(
                          () => Text(
                            userprofile1ItemModelObj.userDate!.value,
                            style: CustomTextStyles.interOnPrimaryMedium5,
                          ),
                        ),
                      ),
                      Spacer(),
                      Opacity(
                        opacity: 0.7,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGridOnprimary,
                          height: 11.v,
                          width: 17.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    bottom: 67.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.8,
                        child: Obx(
                          () => CustomImageView(
                            imagePath:
                                userprofile1ItemModelObj.cardImage9!.value,
                            height: 9.v,
                            width: 17.h,
                            margin: EdgeInsets.only(
                              top: 9.v,
                              bottom: 7.v,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 26.v,
                        width: 103.h,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLine8,
                              height: 26.v,
                              width: 103.h,
                              radius: BorderRadius.circular(
                                8.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgLine8,
                              height: 21.v,
                              width: 96.h,
                              radius: BorderRadius.circular(
                                8.h,
                              ),
                              alignment: Alignment.topRight,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVisa,
                              height: 6.v,
                              width: 22.h,
                              radius: BorderRadius.circular(
                                3.h,
                              ),
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 12.h),
                            ),
                            Obx(
                              () => CustomImageView(
                                imagePath:
                                    userprofile1ItemModelObj.cardImage13!.value,
                                height: 8.adaptSize,
                                width: 8.adaptSize,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(
                                  top: 3.v,
                                  right: 5.h,
                                ),
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
      ),
    );
  }
}
