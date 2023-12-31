import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/my_referrals_screen/models/my_referrals_model.dart';

/// A controller class for the MyReferralsScreen.
///
/// This class manages the state of the MyReferralsScreen, including the
/// current myReferralsModelObj
class MyReferralsController extends GetxController {
  Rx<MyReferralsModel> myReferralsModelObj = MyReferralsModel().obs;
}
