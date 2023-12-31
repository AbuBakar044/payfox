import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/payment_history_page/models/payment_history_model.dart';import 'package:flutter/material.dart';/// A controller class for the PaymentHistoryPage.
///
/// This class manages the state of the PaymentHistoryPage, including the
/// current paymentHistoryModelObj
class PaymentHistoryController extends GetxController {PaymentHistoryController(this.paymentHistoryModelObj);

TextEditingController searchController = TextEditingController();

Rx<PaymentHistoryModel> paymentHistoryModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
