import '../controller/admin_controller.dart';
import '../models/adminviewhierarchy_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdminviewhierarchyItemWidget extends StatelessWidget {
  AdminviewhierarchyItemWidget(
    this.adminviewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AdminviewhierarchyItemModel adminviewhierarchyItemModelObj;

  var controller = Get.find<AdminController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGray90009.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40.adaptSize,
            width: 40.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 27.adaptSize,
                  width: 27.adaptSize,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPlay,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGridPurple100,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Obx(
            () => Text(
              adminviewhierarchyItemModelObj.customerText!.value,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
