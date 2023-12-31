import '../controller/customers_controller.dart';
import '../models/userprofile4_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  Userprofile4ItemWidget(
    this.userprofile4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile4ItemModel userprofile4ItemModelObj;

  var controller = Get.find<CustomersController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.back.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofile4ItemModelObj.userImage!.value,
              height: 32.adaptSize,
              width: 32.adaptSize,
              margin: EdgeInsets.only(
                left: 4.h,
                top: 3.v,
                bottom: 11.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofile4ItemModelObj.userName!.value,
                    style: CustomTextStyles.labelLargeGray20004_1,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    userprofile4ItemModelObj.userPhoneNumber!.value,
                    style: CustomTextStyles.labelLargeGray50012,
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
              top: 10.v,
              bottom: 11.v,
            ),
          ),
        ],
      ),
    );
  }
}
