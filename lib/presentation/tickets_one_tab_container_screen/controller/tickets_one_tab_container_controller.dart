import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/tickets_one_tab_container_screen/models/tickets_one_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TicketsOneTabContainerScreen.
///
/// This class manages the state of the TicketsOneTabContainerScreen, including the
/// current ticketsOneTabContainerModelObj
class TicketsOneTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<TicketsOneTabContainerModel> ticketsOneTabContainerModelObj =
      TicketsOneTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
