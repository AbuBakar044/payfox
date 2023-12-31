import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/request_money_one_screen/models/request_money_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the RequestMoneyOneScreen.
///
/// This class manages the state of the RequestMoneyOneScreen, including the
/// current requestMoneyOneModelObj
class RequestMoneyOneController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<RequestMoneyOneModel> requestMoneyOneModelObj = RequestMoneyOneModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
