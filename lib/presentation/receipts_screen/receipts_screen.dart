import '../receipts_screen/widgets/orderdetailslist_item_widget.dart';
import 'controller/receipts_controller.dart';
import 'models/orderdetailslist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_drop_down.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ReceiptsScreen extends GetWidget<ReceiptsController> {
  const ReceiptsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 13.v,
          ),
          child: Column(
            children: [
              _buildArrowLeftRow(),
              SizedBox(height: 2.v),
              CustomDropDown(
                width: 62.h,
                hintText: "lbl_dec".tr,
                alignment: Alignment.centerRight,
                items:
                    controller.receiptsModelObj.value.dropdownItemList!.value,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 6.v,
                ),
                borderDecoration: DropDownStyleHelper.fillGrayTL4,
                onChanged: (value) {
                  controller.onSelected(value);
                },
              ),
              SizedBox(height: 19.v),
              _buildOrderDetailsList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowLeftRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 32.adaptSize,
          width: 32.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowLeftGray90005,
          ),
        ),
        Spacer(
          flex: 48,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 7.v),
          child: Text(
            "lbl_receipts".tr,
            style: theme.textTheme.titleSmall,
          ),
        ),
        Spacer(
          flex: 51,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgContrastOnprimary,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 6.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOrderDetailsList() {
    return Obx(
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
            .receiptsModelObj.value.orderdetailslistItemList.value.length,
        itemBuilder: (context, index) {
          OrderdetailslistItemModel model = controller
              .receiptsModelObj.value.orderdetailslistItemList.value[index];
          return OrderdetailslistItemWidget(
            model,
          );
        },
      ),
    );
  }
}
