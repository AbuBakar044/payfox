import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/my_linked_account_tab_container_screen/models/my_linked_account_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MyLinkedAccountTabContainerScreen.
///
/// This class manages the state of the MyLinkedAccountTabContainerScreen, including the
/// current myLinkedAccountTabContainerModelObj
class MyLinkedAccountTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MyLinkedAccountTabContainerModel> myLinkedAccountTabContainerModelObj =
      MyLinkedAccountTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
