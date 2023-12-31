import '../product_screen/widgets/foodcomponent1_item_widget.dart';
import 'controller/product_controller.dart';
import 'models/foodcomponent1_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProductScreen extends GetWidget<ProductController> {
  const ProductScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 11.v,
          ),
          child: Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 8.v,
                );
              },
              itemCount: controller
                  .productModelObj.value.foodcomponent1ItemList.value.length,
              itemBuilder: (context, index) {
                Foodcomponent1ItemModel model = controller
                    .productModelObj.value.foodcomponent1ItemList.value[index];
                return Foodcomponent1ItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
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
        text: "lbl_products".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgContrastOnprimary,
          margin: EdgeInsets.fromLTRB(20.h, 14.v, 20.h, 18.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 76,
      width: 78,
      backgroundColor: appTheme.blueGray90007,
      decoration: FloatingButtonStyleHelper.fillBlueGray,
      child: CustomImageView(
        imagePath: ImageConstant.imgPlus,
        height: 38.0.v,
        width: 39.0.h,
      ),
    );
  }
}
