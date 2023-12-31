import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/request_money_screen/models/request_money_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RequestMoneyScreen.
///
/// This class manages the state of the RequestMoneyScreen, including the
/// current requestMoneyModelObj
class RequestMoneyController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<RequestMoneyModel> requestMoneyModelObj = RequestMoneyModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
