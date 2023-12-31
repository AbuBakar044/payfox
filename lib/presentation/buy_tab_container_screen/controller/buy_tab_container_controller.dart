import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/buy_tab_container_screen/models/buy_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BuyTabContainerScreen.
///
/// This class manages the state of the BuyTabContainerScreen, including the
/// current buyTabContainerModelObj
class BuyTabContainerController extends GetxController {
  Rx<BuyTabContainerModel> buyTabContainerModelObj = BuyTabContainerModel().obs;
  
}
