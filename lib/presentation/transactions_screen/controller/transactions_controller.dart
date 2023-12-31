import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/transactions_screen/models/transactions_model.dart';/// A controller class for the TransactionsScreen.
///
/// This class manages the state of the TransactionsScreen, including the
/// current transactionsModelObj
class TransactionsController extends GetxController {Rx<TransactionsModel> transactionsModelObj = TransactionsModel().obs;

 }
