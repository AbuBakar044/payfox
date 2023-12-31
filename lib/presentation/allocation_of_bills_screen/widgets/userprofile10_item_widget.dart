import '../controller/allocation_of_bills_controller.dart';
import '../models/userprofile10_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile10ItemWidget extends StatelessWidget {
  Userprofile10ItemWidget(
    this.userprofile10ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile10ItemModel userprofile10ItemModelObj;

  var controller = Get.find<AllocationOfBillsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray90024,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Container(
          height: 80.v,
          width: 82.h,
          padding: EdgeInsets.symmetric(
            horizontal: 1.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.fillGray90024.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    right: 4.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: userprofile10ItemModelObj.userImage!.value,
                          height: 39.adaptSize,
                          width: 39.adaptSize,
                          radius: BorderRadius.circular(
                            19.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Obx(
                        () => Text(
                          userprofile10ItemModelObj.userName!.value,
                          style: theme.textTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUpGray90015,
                height: 12.adaptSize,
                width: 12.adaptSize,
                alignment: Alignment.topRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
