import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/data/model/home_screen_model.dart';
import 'package:islamic_desktop_software/presentation/home/presenter/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    _homeController.observeScreenSize();
    return Scaffold(
      backgroundColor: DesktopAppColors.backgroundColorOnlyForHomePage,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              homeScreenModelList.length,
              (index) => Padding(
                padding: paddingAll15,
                child: Container(
                  padding: paddingAll10,
                  height: _homeController.twoPercentWidth,
                  width: _homeController.twoPercentWidth,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFFDCE7F0),
                        offset: Offset(0, 14),
                        blurRadius: 34,
                      ),
                    ],
                    color: DesktopAppColors.whiteColor,
                    borderRadius: BorderRadius.circular(kRadius14),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        homeScreenModelList[index].image,
                        height: _homeController.onePercentWidth,
                        width: _homeController.onePercentWidth,
                      ),
                      SizedBox(height: _homeController.zeroTwoPercentWidth),
                      Text(
                        homeScreenModelList[index].title.tr,
                        style: TextUtils.boldText(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
