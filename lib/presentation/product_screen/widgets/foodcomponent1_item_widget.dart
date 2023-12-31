import '../controller/product_controller.dart';
import '../models/foodcomponent1_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Foodcomponent1ItemWidget extends StatelessWidget {
  Foodcomponent1ItemWidget(
    this.foodcomponent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Foodcomponent1ItemModel foodcomponent1ItemModelObj;

  var controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.back.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserAmber300,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 4.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Text(
                        foodcomponent1ItemModelObj.foodName!.value,
                        style: CustomTextStyles.labelLargeGray20004_1,
                      ),
                    ),
                    Container(
                      width: 44.h,
                      margin: EdgeInsets.only(left: 12.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillDeeporange100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Obx(
                        () => Text(
                          foodcomponent1ItemModelObj.foodQuantity!.value,
                          style: CustomTextStyles.interRedA700,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 163.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          foodcomponent1ItemModelObj.sellPrice!.value,
                          style: CustomTextStyles.labelLargeGray40001,
                        ),
                      ),
                      Obx(
                        () => Text(
                          foodcomponent1ItemModelObj.purchasePrice!.value,
                          style: CustomTextStyles.labelLargeGray40001,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgNotification,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }
}
