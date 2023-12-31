import '../controller/homepage_controller.dart';
import '../models/refuelingsection_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RefuelingsectionItemWidget extends StatelessWidget {
  RefuelingsectionItemWidget(
    this.refuelingsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RefuelingsectionItemModel refuelingsectionItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      width: 114.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: refuelingsectionItemModelObj.refuelingImage!.value,
              height: 40.adaptSize,
              width: 40.adaptSize,
            ),
          ),
          SizedBox(height: 11.v),
          Obx(
            () => Text(
              refuelingsectionItemModelObj.refuelingText!.value,
              style: CustomTextStyles.labelLargeOnError,
            ),
          ),
        ],
      ),
    );
  }
}
