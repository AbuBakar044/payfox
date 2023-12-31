import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/write_reviews_tab_container_screen/models/write_reviews_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WriteReviewsTabContainerScreen.
///
/// This class manages the state of the WriteReviewsTabContainerScreen, including the
/// current writeReviewsTabContainerModelObj
class WriteReviewsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<WriteReviewsTabContainerModel> writeReviewsTabContainerModelObj =
      WriteReviewsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));
}
