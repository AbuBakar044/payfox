import 'controller/app_navigation_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Receipt".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.receiptScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment successful Nine".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessfulNineScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "QR CODE STICKER".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.qrCodeStickerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "BNPL".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bnplScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Transactions".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.transactionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tickets".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ticketsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Block card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blockCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Receipts".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.receiptsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Block card One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blockCardOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment terminal".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentTerminalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment successful Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessfulTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Security alerts".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.securityAlertsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "register".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "BNPL One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bnplOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cash withdrawal Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.cashWithdrawalTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account creation".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accountCreationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Summary".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.summaryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "register One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Request Money".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.requestMoneyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cash withdrawal Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.cashWithdrawalThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "register  Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change pin".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePinScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My linked account - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.myLinkedAccountTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Customers".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.customersScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tickets One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.ticketsOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment failed".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentFailedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cash withdrawal".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cashWithdrawalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ATM Gallery One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.atmGalleryOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification sent".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationSentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My referrals".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myReferralsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Currency".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.currencyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "QR payment - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.qrPaymentTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment successful Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessfulThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Transaction pin".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.transactionPinScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign in One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signInOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Done".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.doneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Privacy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment history - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentHistoryTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Done One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.doneOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tickets Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ticketsTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "International transactions".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.internationalTransactionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "QR code scanner".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.qrCodeScannerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passwordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Write reviews - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.writeReviewsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "register Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Buy - Tab Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.buyTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sales".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.salesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment successful Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessfulFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select bank".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectBankScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "iPhone 13 & 14 - Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.iphone1314ThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homepage - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homepageContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Recover Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.recoverPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tickets Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ticketsThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Transaction overview".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.transactionOverviewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Request Money One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.requestMoneyOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "History".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.historyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Refueling".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.refuelingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment successful".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessfulScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Allocation of bills".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.allocationOfBillsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account creation One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.accountCreationOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "QR payment Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.qrPaymentThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Admin".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.adminScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Parking - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.parkingTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select friends".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectFriendsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Inventory".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.inventoryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Parking One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.parkingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Generate".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.generateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "register Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Buy One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.buyOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "iPhone 13 & 14 - Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.iphone1314FourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create new password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cash withdrawal One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.cashWithdrawalOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment successful Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessfulFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment successful Six".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessfulSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Receipts One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.receiptsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ATM Gallery".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.atmGalleryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment successful One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessfulOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Send Money".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sendMoneyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "QR code scanner One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.qrCodeScannerOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Parking Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.parkingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Pin".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pinScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "QR CODE STICKER One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.qrCodeStickerOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Petro Eco Gas station".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.petroEcoGasStationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Receipt One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.receiptOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Languages".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languagesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment terminal One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentTerminalOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Split bills".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splitBillsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tickets Four - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.ticketsFourTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "No linked cards".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.noLinkedCardsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Overview".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.overviewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment successful Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessfulSevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment successful Eight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessfulEightScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
