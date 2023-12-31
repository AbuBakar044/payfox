import '../controller/banking_controller.dart';
import '../models/blockcard_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlockcardItemWidget extends StatelessWidget {
  BlockcardItemWidget(
    this.blockcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BlockcardItemModel blockcardItemModelObj;

  var controller = Get.find<BankingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillDeepOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      width: 114.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.fillDeepOrangeA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: blockcardItemModelObj.imageClass!.value,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              blockcardItemModelObj.text!.value,
              style: CustomTextStyles.labelLargeOnError,
            ),
          ),
        ],
      ),
    );
  }
}
