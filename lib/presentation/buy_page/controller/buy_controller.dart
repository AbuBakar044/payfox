import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/buy_page/models/buy_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BuyPage.
///
/// This class manages the state of the BuyPage, including the
/// current buyModelObj
class BuyController extends GetxController {
  BuyController(this.buyModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<BuyModel> buyModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
