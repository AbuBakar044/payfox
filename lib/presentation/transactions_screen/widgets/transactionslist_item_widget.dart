import '../controller/transactions_controller.dart';
import '../models/transactionslist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TransactionslistItemWidget extends StatelessWidget {
  TransactionslistItemWidget(
    this.transactionslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransactionslistItemModel transactionslistItemModelObj;

  var controller = Get.find<TransactionsController>();

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
              imagePath: transactionslistItemModelObj.userImage!.value,
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
                    transactionslistItemModelObj.locationName!.value,
                    style: CustomTextStyles.labelLargeGray20004_1,
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    transactionslistItemModelObj.timestamp!.value,
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
                  transactionslistItemModelObj.amount!.value,
                  style: CustomTextStyles.titleSmallGray20001,
                ),
              ),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerRight,
                child: Obx(
                  () => Text(
                    transactionslistItemModelObj.status!.value,
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
