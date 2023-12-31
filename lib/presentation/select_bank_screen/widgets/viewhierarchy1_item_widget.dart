import '../controller/select_bank_controller.dart';
import '../models/viewhierarchy1_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Viewhierarchy1ItemWidget extends StatelessWidget {
  Viewhierarchy1ItemWidget(
    this.viewhierarchy1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Viewhierarchy1ItemModel viewhierarchy1ItemModelObj;

  var controller = Get.find<SelectBankController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillGray90011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 54.v,
            width: 60.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillGray90024.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: viewhierarchy1ItemModelObj.bankLogo!.value,
                height: 40.adaptSize,
                width: 40.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 20.v,
              bottom: 17.v,
            ),
            child: Obx(
              () => Text(
                viewhierarchy1ItemModelObj.bankName!.value,
                style: CustomTextStyles.labelLargeBluegray10007_1,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgContrastGray90011,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 19.v,
              bottom: 17.v,
            ),
          ),
        ],
      ),
    );
  }
}
