import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/select_bank_screen/models/select_bank_model.dart';import 'package:flutter/material.dart';/// A controller class for the SelectBankScreen.
///
/// This class manages the state of the SelectBankScreen, including the
/// current selectBankModelObj
class SelectBankController extends GetxController {TextEditingController currentMobileBankController = TextEditingController();

TextEditingController wellsfargoController = TextEditingController();

TextEditingController searchController = TextEditingController();

Rx<SelectBankModel> selectBankModelObj = SelectBankModel().obs;

@override void onClose() { super.onClose(); currentMobileBankController.dispose(); wellsfargoController.dispose(); searchController.dispose(); } 
 }
