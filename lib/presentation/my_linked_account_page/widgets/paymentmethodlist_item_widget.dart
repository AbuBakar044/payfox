import '../controller/my_linked_account_controller.dart';
import '../models/paymentmethodlist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PaymentmethodlistItemWidget extends StatelessWidget {
  PaymentmethodlistItemWidget(
    this.paymentmethodlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentmethodlistItemModel paymentmethodlistItemModelObj;

  var controller = Get.find<MyLinkedAccountController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineGray90012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 24.v,
            width: 34.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath:
                    paymentmethodlistItemModelObj.paymentMethodIcon!.value,
                height: 13.v,
                width: 10.h,
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 3.v,
            ),
            child: Obx(
              () => Text(
                paymentmethodlistItemModelObj.paymentMethodName!.value,
                style: CustomTextStyles.titleSmallGray30001,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Obx(
              () => Text(
                paymentmethodlistItemModelObj.paymentAmount!.value,
                style: CustomTextStyles.titleSmallBold_1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
