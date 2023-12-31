import '../controller/tickets_one_controller.dart';
import '../models/framelist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FramelistItemWidget extends StatelessWidget {
  FramelistItemWidget(
    this.framelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FramelistItemModel framelistItemModelObj;

  var controller = Get.find<TicketsOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 137.h,
      child: Obx(
        () => CustomImageView(
          imagePath: framelistItemModelObj.image!.value,
          height: 180.v,
          width: 137.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
