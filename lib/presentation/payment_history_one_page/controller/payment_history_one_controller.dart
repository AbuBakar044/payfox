import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/payment_history_one_page/models/payment_history_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the PaymentHistoryOnePage.
///
/// This class manages the state of the PaymentHistoryOnePage, including the
/// current paymentHistoryOneModelObj
class PaymentHistoryOneController extends GetxController {PaymentHistoryOneController(this.paymentHistoryOneModelObj);

TextEditingController searchController = TextEditingController();

Rx<PaymentHistoryOneModel> paymentHistoryOneModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
