import '../controller/refueling_controller.dart';
import '../models/gasstationinfo_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GasstationinfoItemWidget extends StatelessWidget {
  GasstationinfoItemWidget(
    this.gasstationinfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GasstationinfoItemModel gasstationinfoItemModelObj;

  var controller = Get.find<RefuelingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.back.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserAmber300,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 11.v,
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
                    gasstationinfoItemModelObj.gasStationName!.value,
                    style: CustomTextStyles.labelLargeGray20004_1,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    gasstationinfoItemModelObj.dateTime!.value,
                    style: CustomTextStyles.labelLargeGray50006,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 81.h,
              bottom: 1.v,
            ),
            child: Column(
              children: [
                Obx(
                  () => Text(
                    gasstationinfoItemModelObj.amount!.value,
                    style: CustomTextStyles.titleSmallGray20001,
                  ),
                ),
                SizedBox(height: 13.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Obx(
                    () => Text(
                      gasstationinfoItemModelObj.status!.value,
                      style: CustomTextStyles.bodySmallGreenA700,
                    ),
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
