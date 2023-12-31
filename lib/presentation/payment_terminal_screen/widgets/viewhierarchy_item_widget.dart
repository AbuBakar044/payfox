import '../controller/payment_terminal_controller.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  var controller = Get.find<PaymentTerminalController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 54.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: viewhierarchyItemModelObj.dynamicImageProp!.value,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Obx(
            () => Text(
              viewhierarchyItemModelObj.dynamicTextProp!.value,
              style: CustomTextStyles.labelLargeOnError,
            ),
          ),
        ],
      ),
    );
  }
}
