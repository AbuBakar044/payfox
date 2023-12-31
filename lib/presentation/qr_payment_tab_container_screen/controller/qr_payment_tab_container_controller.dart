import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/qr_payment_tab_container_screen/models/qr_payment_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the QrPaymentTabContainerScreen.
///
/// This class manages the state of the QrPaymentTabContainerScreen, including the
/// current qrPaymentTabContainerModelObj
class QrPaymentTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<QrPaymentTabContainerModel> qrPaymentTabContainerModelObj =
      QrPaymentTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
