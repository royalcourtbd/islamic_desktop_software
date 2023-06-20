import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/external_libs/expanded_tile.dart';
import 'package:islamic_desktop_software/core/fontfamily/font_family.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_desktop_software/presentation/common/card_container.dart';
import 'package:islamic_desktop_software/presentation/common/global_controller.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/app_bar_widget.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/audio_settings_content.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/font_settings_content.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/reading_settings_content.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/setting_section_widget.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/settings_tile.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/side_bar_widget.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/sura_list_widget.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/sura_name_section.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../home/presenter/home_controller.dart';

class QuranHomePage extends StatelessWidget {
  QuranHomePage({super.key});

  final HomeController _homeController = Get.put(HomeController());
  final GlobalController _globalController = Get.put(GlobalController());

  @override
  Widget build(BuildContext context) {
    _homeController.observeScreenSize();
    _globalController.observeScreenSize();
    return Scaffold(
      backgroundColor: DesktopAppColors.whiteColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SideBarWidget(),
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
                  AppBarWidget(homeController: _homeController),
                  gapH20,
                  Row(
                    children: [
                      _homeController.width.value <= 910
                          ? SizedBox.fromSize()
                          : SuraListWidget(),
                      _globalController.width.value >= 910
                          ? gapW14
                          : const SizedBox.shrink(),
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
                                  padding: EdgeInsets.only(
                                      left: 24, top: 24, right: 24.px),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: DesktopAppColors.backgroundColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          const SuraNameSection(),
                                          gapH14,
                                          ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: 10,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 24),
                                                child: CardContainer(
                                                  horizontalMargin: 0,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    10.px,
                                                                vertical:
                                                                    20.px),
                                                        width: 46.px,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      50.px),
                                                          color: const Color(
                                                              0xffF5FBF9),
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              '4:1',
                                                              style: TextUtils
                                                                  .bodySmallText(),
                                                            ),
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children:
                                                                  List.generate(
                                                                optionIconList
                                                                    .length,
                                                                (index) =>
                                                                    Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 22
                                                                              .px),
                                                                  child: SvgPicture.asset(
                                                                      optionIconList[
                                                                          index]),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      gapW14,
                                                      Expanded(
                                                        child: SizedBox(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  'يَـٰٓأَيُّهَا ٱلَّذِينَ ءَامَنُوٓا۟ إِذَا تَدَايَنتُم بِدَيْنٍ إِلَىٰٓ أَجَلٍۢ مُّسَمًّۭى فَٱكْتُبُوهُ ۚ وَلْيَكْتُب بَّيْنَكُمْ كَاتِبٌۢ بِٱلْعَدْلِ ۚ وَلَا يَأْبَ كَاتِبٌ أَن يَكْتُبَ كَمَا عَلَّمَهُ ٱللَّهُ ۚ فَلْيَكْتُبْ وَلْيُمْلِلِ ٱلَّذِى عَلَيْهِ ٱلْحَقُّ وَلْيَتَّقِ ٱللَّهَ رَبَّهُۥ وَلَا يَبْخَسْ مِنْهُ شَيْـًۭٔا ۚ فَإِن كَانَ ٱلَّذِى عَلَيْهِ ٱلْحَقُّ سَفِيهًا أَوْ ضَعِيفًا أَوْ لَا يَسْتَطِيعُ أَن يُمِلَّ هُوَ فَلْيُمْلِلْ وَلِيُّهُۥ بِٱلْعَدْلِ ۚ وَٱسْتَشْهِدُوا۟ شَهِيدَيْنِ مِن رِّجَالِكُمْ ۖ فَإِن لَّمْ يَكُونَا رَجُلَيْنِ فَرَجُلٌۭ وَٱمْرَأَتَانِ مِمَّن تَرْضَوْنَ مِنَ ٱلشُّهَدَآءِ أَن تَضِلَّ إِحْدَىٰهُمَا فَتُذَكِّرَ إِحْدَىٰهُمَا ٱلْأُخْرَىٰ ۚ وَلَا يَأْبَ ٱلشُّهَدَآءُ إِذَا مَا دُعُوا۟ ۚ وَلَا تَسْـَٔمُوٓا۟ أَن تَكْتُبُوهُ صَغِيرًا أَوْ كَبِيرًا إِلَىٰٓ أَجَلِهِۦ ۚ ذَٰلِكُمْ أَقْسَطُ عِندَ ٱللَّهِ وَأَقْوَمُ لِلشَّهَـٰدَةِ وَأَدْنَىٰٓ أَلَّا تَرْتَابُوٓا۟ ۖ إِلَّآ أَن تَكُونَ تِجَـٰرَةً حَاضِرَةًۭ تُدِيرُونَهَا بَيْنَكُمْ فَلَيْسَ عَلَيْكُمْ جُنَاحٌ أَلَّا تَكْتُبُوهَا ۗ وَأَشْهِدُوٓا۟ إِذَا تَبَايَعْتُمْ ۚ وَلَا يُضَآرَّ كَاتِبٌۭ وَلَا شَهِيدٌۭ ۚ وَإِن تَفْعَلُوا۟ فَإِنَّهُۥ فُسُوقٌۢ بِكُمْ ۗ وَٱتَّقُوا۟ ٱللَّهَ ۖ وَيُعَلِّمُكُمُ ٱللَّهُ ۗ وَٱللَّهُ بِكُلِّ شَىْءٍ عَلِيمٌۭ  ﴿٦﴾  ٢٨٢',
                                                                  style: TextUtils
                                                                      .bodySubtitleText(
                                                                    fontFamily:
                                                                        FontFamily
                                                                            .kfgqpc,
                                                                    fontSize:
                                                                        28.px,
                                                                    color: DesktopAppColors
                                                                        .titleColor,
                                                                  ),
                                                                ),
                                                              ),
                                                              gapH16,
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                    'ENGLISH - SAHIH INTERNATIONAL ',
                                                                    style: TextUtils
                                                                        .bodyTitleText(
                                                                      color: DesktopAppColors
                                                                          .subTitleColor,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '- SEE TAFSIR ',
                                                                    style: TextUtils
                                                                        .bodyTitleText(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                  SvgPicture.asset(
                                                                      SvgPath
                                                                          .icArrowRight),
                                                                ],
                                                              ),
                                                              gapH10,
                                                              Text(
                                                                'O believers! When you contract a loan for a fixed period of time, commit it to writing. Let the scribe maintain justice between the parties. The scribe should not refuse to write as Allah has taught them to write. They will write what the debtor dictates, bearing Allah in mind and not defrauding the debt. If the debtor is incompetent, weak, or unable to dictate, let their guardian dictate for them with justice. Call upon two of your men to witness. If two men cannot be found, then one man and two women of your choice will witness—so if one of the women forgets the other may remind her.1 The witnesses must not refuse when they are summoned. You must not be against writing ˹contracts˺ for a fixed period—whether the sum is small or great. This is more just ˹for you˺ in the sight of Allah, and more convenient to establish evidence and remove doubts. However, if you conduct an immediate transaction among yourselves, then there is no need for you to record it, but call upon witnesses when a deal is finalized. Let no harm come to the scribe or witnesses. If you do, then you have gravely exceeded ˹your limits˺. Be mindful of Allah, for Allah ˹is the One Who˺ teaches you. And Allah has ˹perfect˺ knowledge of all things.',
                                                                style: TextUtils.bodySubtitleText(
                                                                    color: DesktopAppColors
                                                                        .titleColor,
                                                                    fontSize:
                                                                        16.px),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              _homeController.width.value <= 1286
                                  ? SizedBox.fromSize()
                                  : SettingSectionWidget(),
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
}


List<String> optionIconList = [
  SvgPath.icPlay,
  SvgPath.icBookmark,
  SvgPath.icShare,
  SvgPath.icDotMenu,
];
