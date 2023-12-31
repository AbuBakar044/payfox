import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/block_card_one_screen/models/block_card_one_model.dart';

/// A controller class for the BlockCardOneScreen.
///
/// This class manages the state of the BlockCardOneScreen, including the
/// current blockCardOneModelObj
class BlockCardOneController extends GetxController {
  Rx<BlockCardOneModel> blockCardOneModelObj = BlockCardOneModel().obs;
}
