import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/banking_page/models/banking_model.dart';/// A controller class for the BankingPage.
///
/// This class manages the state of the BankingPage, including the
/// current bankingModelObj
class BankingController extends GetxController {BankingController(this.bankingModelObj);

Rx<BankingModel> bankingModelObj;

Rx<int> sliderIndex = 0.obs;

 }
