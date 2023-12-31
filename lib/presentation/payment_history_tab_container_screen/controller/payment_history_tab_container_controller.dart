import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_history_tab_container_screen/models/payment_history_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PaymentHistoryTabContainerScreen.
///
/// This class manages the state of the PaymentHistoryTabContainerScreen, including the
/// current paymentHistoryTabContainerModelObj
class PaymentHistoryTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<PaymentHistoryTabContainerModel> paymentHistoryTabContainerModelObj =
      PaymentHistoryTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
