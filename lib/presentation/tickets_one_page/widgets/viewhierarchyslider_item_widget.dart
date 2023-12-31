import '../controller/tickets_one_controller.dart';
import '../models/viewhierarchyslider_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchysliderItemWidget extends StatelessWidget {
  ViewhierarchysliderItemWidget(
    this.viewhierarchysliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchysliderItemModel viewhierarchysliderItemModelObj;

  var controller = Get.find<TicketsOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 146.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage7,
            height: 146.v,
            width: 353.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                bottom: 14.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "msg_save_50_watching".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 5.v),
                  SizedBox(
                    width: 185.h,
                    child: Text(
                      "msg_buy_tickets_at_discounted".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelMediumBlue10001.copyWith(
                        height: 1.27,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_learn_more".tr,
                      style: CustomTextStyles.labelLargeAmber700,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 142.h,
                        right: 15.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder2,
                      ),
                      child: Obx(
                        () => CustomPinCodeTextField(
                          context: Get.context!,
                          controller: controller.otpController,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
