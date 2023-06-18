import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/fontfamily/font_family.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_desktop_software/data/model/surah_name_model.dart';
import 'package:islamic_desktop_software/presentation/common/card_container.dart';
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
          _builSideBar(context),
          const VerticalDivider(
            width: 2,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20.px, vertical: 20.px),
              child: Column(
                children: [
                  _buildAppBar(context),
                  gapH20,
                  Row(
                    children: [
                      _buildSurahListWidget(),
                      gapW14,
                      Expanded(
                        child: Container(
                          height: _homeController.height.value - 115,
                          decoration: BoxDecoration(
                            color: DesktopAppColors.backgroundColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 24, top: 24),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: DesktopAppColors.backgroundColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        CardContainer(
                                          horizontalMargin: 0,
                                          padding: EdgeInsets.zero,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 24,
                                                    top: 24,
                                                    bottom: 24),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Al-Fatiha',
                                                      style: TextUtils
                                                          .bodyTitleText(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 26.px),
                                                    ),
                                                    gapH4,
                                                    Text(
                                                      'The Opening | Meccan',
                                                      style: TextUtils
                                                          .bodySubtitleText(),
                                                    ),
                                                    gapH2,
                                                    Text(
                                                      'Ayahs : 7',
                                                      style: TextUtils
                                                          .bodySubtitleText(),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Image.asset(
                                                SvgPath.imgPlayButton,
                                                width: 100.px,
                                                height: 30.px,
                                              ),
                                              ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(
                                                  kRadius14,
                                                )),
                                                child: Image.asset(
                                                  SvgPath.imgMakka,
                                                  height: 100.px,
                                                  width: 170.px,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(24),
                                child: Container(
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: DesktopAppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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

  Container _buildSurahListWidget() {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      height: _homeController.height.value - 115,
      width: 320.px,
      decoration: BoxDecoration(
        color: DesktopAppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: DesktopAppColors.whiteColor,
                borderRadius: BorderRadius.circular(kRadius10),
                border: Border.all(
                  color: const Color(0xff6D7B81).withOpacity(0.2),
                  width: 2.px,
                ),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search Sura Name or Number'.tr,
                  hintStyle: TextUtils.searchBoxText(),
                  prefixIcon: const Icon(Icons.search),
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
              ),
            ),
            gapH10,
            ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: allSurahNameList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: CardContainer(
                    horizontalMargin: 0,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 40.px,
                          width: 40.px,
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 2.px),
                          ),
                          child: Text(
                            '${index + 1}',
                            style: TextUtils.bodyTitleText(
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                        gapW10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              allSurahNameList[index].name,
                              style: TextUtils.bodyTitleText(fontSize: 16.px),
                            ),
                            gapH2,
                            SizedBox(
                              width: 140.px,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                '${allSurahNameList[index].meaning} | ${allSurahNameList[index].revelation}',
                                style: TextUtils.bodySubtitleText(),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              allSurahNameList[index].number,
                              style: TextUtils.bodySubtitleText(
                                  fontSize: 20.px,
                                  fontFamily: FontFamily.surahNames),
                            ),
                            Text(
                              '${allSurahNameList[index].ayah} Ayah',
                              style: TextUtils.bodySubtitleText(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            gapH20
          ],
        ),
      ),
    );
  }

  SizedBox _buildAppBar(BuildContext context) {
    return SizedBox(
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
          _buildSearchBox(),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    );
  }

  Container _buildSearchBox() {
    return Container(
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
          hintStyle: TextUtils.searchBoxText(),
        ),
      ),
    );
  }

  Container _builSideBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.px),
      width: 91,
      child: Column(
        children: [
          InkWell(
            onTap: () => Get.back(),
            child: Container(
              width: 60.px,
              height: 60.px,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kRadius14),
                color: Theme.of(context).primaryColor.withOpacity(0.1),
              ),
              child: Padding(
                padding: paddingAll20,
                child: SvgPicture.asset(
                  SvgPath.icArrowLeft,
                ),
              ),
            ),
          ),
          gapH14,
          Text(
            'Menubar'.tr,
            style: TextUtils.mediumText(
                color: DesktopAppColors.boldTitleColor.withOpacity(0.5)),
          ),
          Column(
            children: List.generate(
              3,
              (index) => InkWell(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                onTap: () => sideBarItemTap(index),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.px),
                  child: SizedBox(
                    height: 60,
                    child: SvgPicture.asset(
                      iconList[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            decoration: const BoxDecoration(
              border:
                  Border(top: BorderSide(color: Color(0xffEAECF0), width: 2)),
            ),
            child: Image.asset(
              SvgPath.icProfileImage,
            ),
          ),
        ],
      ),
    );
  }

  sideBarItemTap(int index) {
    print(index);
  }
}

List<String> iconList = [
  SvgPath.icHome,
  SvgPath.icOpenBook,
  SvgPath.icPlane,
];
