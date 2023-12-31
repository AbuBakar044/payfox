import '../controller/receipts_controller.dart';
import '../models/orderdetailslist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderdetailslistItemWidget extends StatelessWidget {
  OrderdetailslistItemWidget(
    this.orderdetailslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderdetailslistItemModel orderdetailslistItemModelObj;

  var controller = Get.find<ReceiptsController>();

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
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    orderdetailslistItemModelObj.orderText!.value,
                    style: CustomTextStyles.bodySmallGray40007,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    orderdetailslistItemModelObj.orderAmount!.value,
                    style: CustomTextStyles.labelLargeGray20004,
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
