import '../admin_screen/widgets/adminviewhierarchy_item_widget.dart';
import 'controller/admin_controller.dart';
import 'models/adminviewhierarchy_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AdminScreen extends GetWidget<AdminController> {
  const AdminScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 18.h,
            top: 8.v,
            right: 25.h,
          ),
          child: Obx(
            () => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 99.v,
                crossAxisCount: 3,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 8.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller
                  .adminModelObj.value.adminviewhierarchyItemList.value.length,
              itemBuilder: (context, index) {
                AdminviewhierarchyItemModel model = controller.adminModelObj
                    .value.adminviewhierarchyItemList.value[index];
                return AdminviewhierarchyItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_admin".tr,
      ),
    );
  }
}
