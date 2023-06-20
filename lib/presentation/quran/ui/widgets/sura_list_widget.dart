import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/fontfamily/font_family.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/data/model/surah_name_model.dart';
import 'package:islamic_desktop_software/presentation/common/card_container.dart';
import 'package:islamic_desktop_software/presentation/common/global_controller.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/quran_tab_button_section.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SuraListWidget extends StatelessWidget {
  SuraListWidget({
    super.key,
  });

  final GlobalController _globalController = Get.put(GlobalController());

  @override
  Widget build(BuildContext context) {
    _globalController.observeScreenSize();
    return Container(
      padding: EdgeInsets.only(
        top: 15.px,
        left: 15.px,
      ),
      height: _globalController.height.value - 115,
      width: _globalController.width.value >= 1200 ? 320.px : 280.px,
      decoration: BoxDecoration(
        color: DesktopAppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 15.px),
          child: Column(
            children: [
              QuranTabButtonSection(),
              gapH16,
              Container(
                height: 50.px,
                decoration: BoxDecoration(
                  color: DesktopAppColors.whiteColor,
                  borderRadius: BorderRadius.circular(kRadius10),
                  border: Border.all(
                    color: DesktopAppColors.subTitleColor.withOpacity(0.2),
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
                    padding: EdgeInsets.only(top: 12.px),
                    child: CardContainer(
                      horizontalMargin: 0,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 35.px,
                            width: 35.px,
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
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
                              SizedBox(
                                width: _globalController.width.value <= 1200
                                    ? 115
                                    : 120.px,
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  allSurahNameList[index].name,
                                  style:
                                      TextUtils.bodyTitleText(fontSize: 16.px),
                                ),
                              ),
                              //gapH10,
                              SizedBox(
                                width: _globalController.width.value <= 1200
                                    ? 115
                                    : 120.px,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                //color: const Color.fromARGB(255, 10, 250, 214),
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  allSurahNameList[index].number,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamily.surahNames,
                                      color: DesktopAppColors.titleColor),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                //  color: Colors.red,
                                width: 60.px,
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  '${allSurahNameList[index].ayah} Ayah',
                                  style: TextUtils.bodySubtitleText(),
                                ),
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
      ),
    );
  }
}
