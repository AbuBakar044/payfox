import '../controller/payment_terminal_controller.dart';
import '../models/userprofile2_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<PaymentTerminalController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
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
              imagePath: userprofile2ItemModelObj.userImage!.value,
              height: 32.adaptSize,
              width: 32.adaptSize,
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 10.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofile2ItemModelObj.locationText!.value,
                    style: CustomTextStyles.labelLargeGray20004_1,
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    userprofile2ItemModelObj.dateTimeText!.value,
                    style: CustomTextStyles.labelLargeGray60004,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              Obx(
                () => Text(
                  userprofile2ItemModelObj.amountText!.value,
                  style: CustomTextStyles.titleSmallGray20001,
                ),
              ),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerRight,
                child: Obx(
                  () => Text(
                    userprofile2ItemModelObj.statusText!.value,
                    style: CustomTextStyles.bodySmallGreenA700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
