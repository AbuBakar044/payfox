import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  CustomBottomAppBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxList<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgHomeOnprimary,
        activeIcon: ImageConstant.imgHomeOnprimary,
        title: "lbl_home".tr,
        type: BottomBarEnum.Home,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgTrophy,
      activeIcon: ImageConstant.imgTrophy,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSettingsPrimarycontainer,
      activeIcon: ImageConstant.imgSettingsPrimarycontainer,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserPrimarycontainer,
      activeIcon: ImageConstant.imgUserPrimarycontainer,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    )
  ].obs;

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.h),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: SizedBox(
            height: 24.v,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                bottomMenuList.length,
                (index) {
                  return InkWell(
                    onTap: () {
                      for (var element in bottomMenuList) {
                        element.isSelected = false;
                      }
                      bottomMenuList[index].isSelected = true;
                      onChanged?.call(bottomMenuList[index].type);
                      bottomMenuList.refresh();
                    },
                    child: bottomMenuList[index].isSelected
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: bottomMenuList[index].activeIcon,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                color:
                                    theme.colorScheme.onPrimary.withOpacity(1),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  bottomMenuList[index].title ?? "",
                                  style: CustomTextStyles
                                      .labelMediumOnPrimaryBold
                                      .copyWith(
                                    color: theme.colorScheme.onPrimary
                                        .withOpacity(1),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : CustomImageView(
                            imagePath: bottomMenuList[index].icon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            color: theme.colorScheme.primaryContainer,
                          ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
