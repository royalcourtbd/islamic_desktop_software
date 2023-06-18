import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../home/presenter/home_controller.dart';

class QuranHomePage extends StatelessWidget {
  QuranHomePage({super.key});

  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    _homeController.observeScreenSize();
    return Scaffold(
      backgroundColor: DesktopAppColors.whiteColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            color: Colors.red,
          ),
          const VerticalDivider(
            width: 2,
            color: Colors.blue,
            thickness: 2,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20.px, vertical: 20.px),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(kRadius10),
                                border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 2.px,
                                ),
                              ),
                              child: Image.asset(
                                SvgPath.icQuranApp,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            gapW14,
                            _homeController.width.value <= 800
                                ? SizedBox.fromSize()
                                : Text(
                                    'Quran Mazid'.tr,
                                    style: TextUtils.boldText(),
                                  ),
                            _homeController.width.value <= 800
                                ? const SizedBox.shrink()
                                : gapW14,
                            SvgPicture.asset(
                              SvgPath.icArrowDown,
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffE1E5ED),
                              width: 2.px,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          width: _homeController.searchBoxWidth,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: const Color(0xffF3F5F9),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(4),
                                child: SvgPicture.asset(
                                  SvgPath.icSearch,
                                ),
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  SvgPath.icFilter,
                                ),
                              ),
                              filled: true,
                              errorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintText: 'Search Sura, Juz, Para, Page'.tr,
                              hintStyle: TextStyle(
                                fontSize: 12.px,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              SvgPath.icSettings,
                              height: 38.px,
                            ),
                            gapW30,
                            Container(
                              padding: paddingAll10,
                              height: 48.px,
                              width: _homeController.fullScreen,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10.px),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _homeController.isFullScreen
                                      ? const Text(
                                          'Support Us',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                                  SvgPicture.asset(
                                    SvgPath.icSupport,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: DesktopAppColors.backgroundColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
