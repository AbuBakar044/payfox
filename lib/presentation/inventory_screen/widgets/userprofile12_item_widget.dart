import '../controller/inventory_controller.dart';
import '../models/userprofile12_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile12ItemWidget extends StatelessWidget {
  Userprofile12ItemWidget(
    this.userprofile12ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile12ItemModel userprofile12ItemModelObj;

  var controller = Get.find<InventoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.back.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseBlueGray90005,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(left: 3.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofile12ItemModelObj.companyName!.value,
                    style: CustomTextStyles.labelLargeGray20004,
                  ),
                ),
                SizedBox(height: 4.v),
                Obx(
                  () => Text(
                    userprofile12ItemModelObj.message!.value,
                    style: CustomTextStyles.bodySmallGray40007,
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
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
        ],
      ),
    );
  }
}
