import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/transaction_overview_screen/models/transaction_overview_model.dart';/// A controller class for the TransactionOverviewScreen.
///
/// This class manages the state of the TransactionOverviewScreen, including the
/// current transactionOverviewModelObj
class TransactionOverviewController extends GetxController {Rx<TransactionOverviewModel> transactionOverviewModelObj = TransactionOverviewModel().obs;

 }
