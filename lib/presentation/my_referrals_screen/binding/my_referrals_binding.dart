import '../controller/my_referrals_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyReferralsScreen.
///
/// This class ensures that the MyReferralsController is created when the
/// MyReferralsScreen is first loaded.
class MyReferralsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyReferralsController());
  }
}
