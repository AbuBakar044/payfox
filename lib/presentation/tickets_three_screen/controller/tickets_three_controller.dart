import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/tickets_three_screen/models/tickets_three_model.dart';

/// A controller class for the TicketsThreeScreen.
///
/// This class manages the state of the TicketsThreeScreen, including the
/// current ticketsThreeModelObj
class TicketsThreeController extends GetxController {
  Rx<TicketsThreeModel> ticketsThreeModelObj = TicketsThreeModel().obs;
}
