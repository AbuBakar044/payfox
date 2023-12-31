import '../controller/send_money_controller.dart';
import '../models/searchlist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchlistItemWidget extends StatelessWidget {
  SearchlistItemWidget(
    this.searchlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchlistItemModel searchlistItemModelObj;

  var controller = Get.find<SendMoneyController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 92.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 17.v,
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
                  imagePath: searchlistItemModelObj.searchImage!.value,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
              ),
              SizedBox(height: 6.v),
              Obx(
                () => Text(
                  searchlistItemModelObj.searchText!.value,
                  style: CustomTextStyles.labelMediumBluegray10007,
                ),
              ),
              SizedBox(height: 3.v),
            ],
          ),
        ),
      ),
    );
  }
}
