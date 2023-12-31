import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/block_card_two_bottomsheet/models/block_card_two_model.dart';

/// A controller class for the BlockCardTwoBottomsheet.
///
/// This class manages the state of the BlockCardTwoBottomsheet, including the
/// current blockCardTwoModelObj
class BlockCardTwoController extends GetxController {
  Rx<BlockCardTwoModel> blockCardTwoModelObj = BlockCardTwoModel().obs;
}
