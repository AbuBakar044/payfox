import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/parking_tab_container_screen/models/parking_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ParkingTabContainerScreen.
///
/// This class manages the state of the ParkingTabContainerScreen, including the
/// current parkingTabContainerModelObj
class ParkingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ParkingTabContainerModel> parkingTabContainerModelObj =
      ParkingTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 6));
}
