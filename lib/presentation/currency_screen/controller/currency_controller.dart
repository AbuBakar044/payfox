import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/currency_screen/models/currency_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CurrencyScreen.
///
/// This class manages the state of the CurrencyScreen, including the
/// current currencyModelObj
class CurrencyController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<CurrencyModel> currencyModelObj = CurrencyModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
