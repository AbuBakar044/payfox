import '../controller/request_money_one_controller.dart';
import '../models/requestmoneyone_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RequestmoneyoneItemWidget extends StatelessWidget {
  RequestmoneyoneItemWidget(
    this.requestmoneyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RequestmoneyoneItemModel requestmoneyoneItemModelObj;

  var controller = Get.find<RequestMoneyOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray90024.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: requestmoneyoneItemModelObj.search!.value,
              height: 28.adaptSize,
              width: 28.adaptSize,
            ),
          ),
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              requestmoneyoneItemModelObj.search1!.value,
              style: theme.textTheme.labelSmall,
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
