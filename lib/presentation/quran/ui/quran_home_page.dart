import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_desktop_software/presentation/quran/presenter/quran_home_controller.dart';

import '../../home/presenter/home_controller.dart';

class QuranHomePage extends StatelessWidget {
  QuranHomePage({super.key});
  final QuranHomeController _quranHomeController =
      Get.put(QuranHomeController());
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
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    //color: const Color.fromARGB(255, 18, 248, 79),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              SvgPath.icQuranApp,
                              width: 40,
                              height: 40,
                            ),
                            gapW14,
                            Text(
                              'Quran Mazid',
                              style: TextUtils.boldText(),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffE1E5ED),
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          width: 470,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: const Color(0xffF3F5F9),
                              prefixIcon: SvgPicture.asset(
                                SvgPath.icSearch,
                              ),
                              suffixIcon: SvgPicture.asset(
                                SvgPath.icFilter,
                              ),
                              filled: true,
                              contentPadding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              errorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintText: 'Search Sura, Juz, Para, Page',
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              SvgPath.icSettings,
                              height: 50,
                            ),
                            Container(
                              height: 50,
                              width: 150,
                              color: Theme.of(context).primaryColor,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: DesktopAppColors.backgroundColor,
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
