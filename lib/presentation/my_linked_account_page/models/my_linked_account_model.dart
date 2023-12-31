import '../../../core/app_export.dart';import 'paymentmethodlist_item_model.dart';/// This class defines the variables used in the [my_linked_account_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyLinkedAccountModel {Rx<List<PaymentmethodlistItemModel>> paymentmethodlistItemList = Rx([PaymentmethodlistItemModel(paymentMethodIcon:ImageConstant.imgPaypal.obs,paymentMethodName: "Paypal".obs,paymentAmount: "45,000.00".obs),PaymentmethodlistItemModel(paymentMethodIcon:ImageConstant.imgSettingsPink30001.obs,paymentMethodName: "Skrill".obs,paymentAmount: "400.00".obs)]);

 }
