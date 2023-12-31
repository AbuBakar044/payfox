import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_terminal_one_screen/models/payment_terminal_one_model.dart';

/// A controller class for the PaymentTerminalOneScreen.
///
/// This class manages the state of the PaymentTerminalOneScreen, including the
/// current paymentTerminalOneModelObj
class PaymentTerminalOneController extends GetxController {
  Rx<PaymentTerminalOneModel> paymentTerminalOneModelObj =
      PaymentTerminalOneModel().obs;
}
