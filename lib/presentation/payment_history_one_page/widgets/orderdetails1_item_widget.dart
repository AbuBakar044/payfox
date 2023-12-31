import '../controller/payment_history_one_controller.dart';
import '../models/orderdetails1_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Orderdetails1ItemWidget extends StatelessWidget {
  Orderdetails1ItemWidget(
    this.orderdetails1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Orderdetails1ItemModel orderdetails1ItemModelObj;

  var controller = Get.find<PaymentHistoryOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_order_no2".tr,
                            style: CustomTextStyles.bodySmallOnPrimary12_1,
                          ),
                          TextSpan(
                            text: "lbl".tr,
                            style: CustomTextStyles.labelLargeOnPrimary,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        orderdetails1ItemModelObj.orderID!.value,
                        style: CustomTextStyles.labelLargeOnPrimary12_2,
                      ),
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgContrastOrange50001,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    top: 10.v,
                    bottom: 8.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    orderdetails1ItemModelObj.orderAmount!.value,
                    style: CustomTextStyles.titleSmallBold15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Obx(
                    () => Text(
                      orderdetails1ItemModelObj.orderInstalment!.value,
                      style: CustomTextStyles.bodySmallOnPrimary10_1,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Obx(
                    () => Text(
                      orderdetails1ItemModelObj.orderDate!.value,
                      style: CustomTextStyles.bodySmall10,
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
