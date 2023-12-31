import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/no_linked_cards_screen/models/no_linked_cards_model.dart';

/// A controller class for the NoLinkedCardsScreen.
///
/// This class manages the state of the NoLinkedCardsScreen, including the
/// current noLinkedCardsModelObj
class NoLinkedCardsController extends GetxController {
  Rx<NoLinkedCardsModel> noLinkedCardsModelObj = NoLinkedCardsModel().obs;
}
