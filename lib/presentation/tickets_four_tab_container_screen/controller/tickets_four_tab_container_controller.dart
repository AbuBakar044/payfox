import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/tickets_four_tab_container_screen/models/tickets_four_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TicketsFourTabContainerScreen.
///
/// This class manages the state of the TicketsFourTabContainerScreen, including the
/// current ticketsFourTabContainerModelObj
class TicketsFourTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<TicketsFourTabContainerModel> ticketsFourTabContainerModelObj =
      TicketsFourTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
