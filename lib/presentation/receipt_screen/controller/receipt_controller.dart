import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/receipt_screen/models/receipt_model.dart';

/// A controller class for the ReceiptScreen.
///
/// This class manages the state of the ReceiptScreen, including the
/// current receiptModelObj
class ReceiptController extends GetxController {
  Rx<ReceiptModel> receiptModelObj = ReceiptModel().obs;
}
