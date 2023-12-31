import 'controller/homepage_container_controller.dart';import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/homepage_page/homepage_page.dart';import 'package:abu_s_application3/widgets/custom_bottom_app_bar.dart';import 'package:abu_s_application3/widgets/custom_floating_button.dart';import 'package:flutter/material.dart';class HomepageContainerScreen extends GetWidget<HomepageContainerController> {const HomepageContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.homepagePage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: _buildBottomAppBar(), floatingActionButton: CustomFloatingButton(height: 48, width: 48, backgroundColor: appTheme.deepPurpleA200, child: CustomImageView(imagePath: ImageConstant.imgSave, height: 24.0.v, width: 24.0.h)), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked)); } 
/// Section Widget
Widget _buildBottomAppBar() { return CustomBottomAppBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homepagePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homepagePage: return HomepagePage(); default: return DefaultWidget();} } 
 }
