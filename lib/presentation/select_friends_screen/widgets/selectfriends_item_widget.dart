import '../controller/select_friends_controller.dart';
import '../models/selectfriends_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectfriendsItemWidget extends StatelessWidget {
  SelectfriendsItemWidget(
    this.selectfriendsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectfriendsItemModel selectfriendsItemModelObj;

  var controller = Get.find<SelectFriendsController>();

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
              imagePath: selectfriendsItemModelObj.search!.value,
              height: 28.adaptSize,
              width: 28.adaptSize,
            ),
          ),
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              selectfriendsItemModelObj.search1!.value,
              style: theme.textTheme.labelSmall,
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
