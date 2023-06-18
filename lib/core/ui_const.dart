import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/fontfamily/font_family.dart';
import 'package:islamic_desktop_software/core/util/desktop_screen.dart';
import 'package:islamic_desktop_software/presentation/home/presenter/home_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextUtils {
  static final HomeController _homeController = Get.put(HomeController());
  static TextStyle boldText({
    Color? color,
  }) {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w700,
      color: color ?? DesktopAppColors.boldTitleColor,
      fontSize: _homeController.isFullScreen ? 32.px : 26.px,
    );
  }

  static TextStyle searchBoxText() {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w400,
      color: DesktopAppColors.searchTextColor,
      fontSize: _homeController.zeroTwoPercentWidth,
    );
  }

  static TextStyle bodyTitleText({
    Color? color,
    double? height,
    double? fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w600,
      height: height ?? 0,
      color: color ??
          (Get.isDarkMode
              ? DesktopAppColors.darkTitleColor
              : DesktopAppColors.titleColor),
      fontSize:
          DesktopScreen.isMobile ? fontSize ?? 14.px : (fontSize ?? 14) + 10.px,
    );
  }

  static TextStyle titleText(
      {Color? color,
      double? fontSize,
      TextDecoration? decoration,
      double? height}) {
    return TextStyle(
      height: height ?? 1,
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w600,
      decoration: decoration ?? TextDecoration.none,
      color: color ??
          (Get.isDarkMode
              ? DesktopAppColors.darkTitleColor
              : DesktopAppColors.titleColor),
      fontSize: DesktopScreen.isMobile ? fontSize ?? 14.px : 24.px,
    );
  }

  static TextStyle bodyMediumText(
      {double? fontSizeMobile, double? fontSizeTab, Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w600,
      color: color ??
          (Get.isDarkMode
              ? DesktopAppColors.darkTitleColor
              : DesktopAppColors.titleColor),
      fontSize: DesktopScreen.isMobile
          ? fontSizeMobile ?? 12.px
          : fontSizeTab ?? 22.px,
    );
  }

  static TextStyle bodySubtitleText(
      {Color? color,
      FontWeight? fontWeight,
      double? fontSize,
      double? height}) {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: fontWeight ?? FontWeight.w500,
      height: height ?? 1,
      color: color ??
          (Get.isDarkMode
              ? DesktopAppColors.darkTitleColor
              : DesktopAppColors.titleColor),
      fontSize: DesktopScreen.isMobile
          ? fontSize ?? 12.px
          : (fontSize ?? 12.px) + 10.px,
    );
  }

  static TextStyle subtitle({Color? color, double? height}) {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w400,
      height: height ?? 0,
      color: color ??
          (Get.isDarkMode
              ? DesktopAppColors.darkSubTitleColor
              : DesktopAppColors.subTitleColor),
      fontSize: DesktopScreen.isMobile ? 12.px : 20.px,
    );
  }

  static TextStyle displayLargeText({Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w700,
      color: color ??
          (Get.isDarkMode
              ? DesktopAppColors.darkTitleColor
              : DesktopAppColors.titleColor),
      fontSize: DesktopScreen.isMobile ? 18.px : 36.px,
    );
  }

  static TextStyle headLineText({Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w600,
      color: color ??
          (Get.isDarkMode
              ? DesktopAppColors.darkTitleColor
              : DesktopAppColors.headLineColor),
      fontSize: DesktopScreen.isMobile ? 18.px : 36.px,
    );
  }

  static TextStyle subtitleMediumText(
      {Color? color, double? height, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: fontWeight ?? FontWeight.w400,
      height: height ?? 1.8,
      color: color ??
          (Get.isDarkMode
              ? DesktopAppColors.darkTitleColor
              : DesktopAppColors.titleColor),
      fontSize: DesktopScreen.isMobile ? 14.px : 22.px,
    );
  }

  static TextStyle subtitleText({Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w400,
      height: 1.3,
      color: color ??
          (Get.isDarkMode
              ? DesktopAppColors.darkTitleColor
              : DesktopAppColors.titleColor),
      fontSize: DesktopScreen.isMobile ? 14.px : 22.px,
    );
  }

  static TextStyle bodySmallText() {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w600,
      color: DesktopAppColors.primaryColor,
      fontSize: DesktopScreen.isMobile ? 10.px : 18.px,
    );
  }

  static TextStyle titleSmallText({double? fontSize, Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w400,
      height: 1.8,
      color: color ??
          (Get.isDarkMode
              ? DesktopAppColors.darkSubTitleColor
              : DesktopAppColors.subTitleColor),
      fontSize: DesktopScreen.isMobile ? fontSize ?? 12.px : 25.px,
    );
  }

  static TextStyle topBarWhiteText({Color? color}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w700,
      color: color ?? DesktopAppColors.whiteColor,
      fontSize: DesktopScreen.isMobile ? 20.px : 34.px,
    );
  }

  static TextStyle smallText(
      {Color? color, double? height, TextDecoration? decoration}) {
    return TextStyle(
      wordSpacing: 2,
      height: height ?? 1.3,
      fontFamily: FontFamily.roboto,
      decoration: decoration ?? TextDecoration.none,
      fontWeight: FontWeight.w400,
      color: color ?? DesktopAppColors.whiteColor,
      fontSize: DesktopScreen.isMobile ? 12.px : 20.px,
    );
  }
}

//////////Horizintal padding////////////////////
final paddingH10 =
    EdgeInsets.symmetric(horizontal: DesktopScreen.isMobile ? 10.px : 18.px);
final paddingH12 = EdgeInsets.symmetric(horizontal: 12.px);
final paddingH14 =
    EdgeInsets.symmetric(horizontal: DesktopScreen.isMobile ? 14.px : 20.px);
final paddingH16 = EdgeInsets.symmetric(horizontal: 16.px);
final paddingH15 = EdgeInsets.symmetric(
  horizontal: DesktopScreen.isMobile ? 15.px : 25.px,
);
final paddingH18 = EdgeInsets.symmetric(horizontal: 18.px);
final paddingH20 = EdgeInsets.symmetric(horizontal: 20.px);
final paddingH22 = EdgeInsets.symmetric(horizontal: 22.px);
final paddingH24 = EdgeInsets.symmetric(horizontal: 24.px);
//////////////////////////////////////////////////

//////////vertical  padding////////////////////
final paddingV8 = EdgeInsets.symmetric(vertical: 8.px);
final paddingV10 = EdgeInsets.symmetric(vertical: 10.px);
final paddingV12 = EdgeInsets.symmetric(vertical: 12.px);
final paddingV14 = EdgeInsets.symmetric(vertical: 14.px);
final paddingV16 = EdgeInsets.symmetric(vertical: 16.px);
final paddingV18 = EdgeInsets.symmetric(vertical: 18.px);
final paddingV20 = EdgeInsets.symmetric(vertical: 20.px);
final paddingV22 = EdgeInsets.symmetric(vertical: 22.px);
final paddingV24 = EdgeInsets.symmetric(vertical: 24.px);
///////////////////////////////////////////////////////
///

///
//////////top  padding////////////////////
final paddingT10 = EdgeInsets.only(top: 10.px);
final paddingT12 = EdgeInsets.only(top: 12.px);
final paddingT14 = EdgeInsets.only(top: DesktopScreen.isMobile ? 14.px : 26.px);
final paddingT16 = EdgeInsets.only(top: 16.px);
final paddingT18 = EdgeInsets.only(top: 18.px);
final paddingT20 = EdgeInsets.only(top: 20.px);
final paddingT22 = EdgeInsets.only(top: 22.px);
final paddingT24 = EdgeInsets.only(top: 24.px);
final paddingT10B10L15 = EdgeInsets.only(
    top: DesktopScreen.isMobile ? 10.px : 25.px,
    bottom: DesktopScreen.isMobile ? 10.px : 25.px,
    left: DesktopScreen.isMobile ? 18.px : 32.px);

final paddingL14R14B14 =
    EdgeInsets.only(left: kPadding14, right: kPadding14, bottom: kPadding14);

///////////////////////////////////////////////////////
////////////////////buttom////////////////
final paddingB10 = EdgeInsets.only(
  bottom: DesktopScreen.isMobile ? 10.px : 20.px,
);

final double kPadding15 = DesktopScreen.isMobile ? 15.px : 30.px;
final double kPadding20 = DesktopScreen.isMobile ? 20.px : 30.px;
final double kPadding22 = DesktopScreen.isMobile ? 22.px : 32.px;
final paddingT15L15R15 =
    EdgeInsets.only(top: kPadding15, left: kPadding15, right: kPadding15);

///
final paddingV10H15 = EdgeInsets.symmetric(
    vertical: 10, horizontal: DesktopScreen.isMobile ? 15.px : 22.px);
final paddingV15H13 = EdgeInsets.symmetric(
    vertical: DesktopScreen.isMobile ? 15.px : 25.px,
    horizontal: DesktopScreen.isMobile ? 13.px : 23.px);
final paddingV6H11 = EdgeInsets.symmetric(
    vertical: DesktopScreen.isMobile ? 6.px : 12.px,
    horizontal: DesktopScreen.isMobile ? 11.px : 22.px);
final paddingV16H14 = EdgeInsets.symmetric(vertical: 16.px, horizontal: 14.px);
final paddingH7V15 = EdgeInsets.symmetric(
    horizontal: DesktopScreen.isMobile ? 7.px : 15.px,
    vertical: DesktopScreen.isMobile ? 15.px : 27.px);
final paddingH15V15 = EdgeInsets.symmetric(
  horizontal: DesktopScreen.isMobile ? 15.px : 25.px,
  vertical: DesktopScreen.isMobile ? 15.px : 25.px,
);
final paddingH17 = EdgeInsets.symmetric(
  horizontal: DesktopScreen.isMobile ? 17.px : 25.px,
);

//////////left  padding////////////////////
final paddingL15 =
    EdgeInsets.only(left: DesktopScreen.isMobile ? 15.px : 25.px);
/////////////////////////////////////

final paddingAll1 = EdgeInsets.all(DesktopScreen.isMobile ? 1.5.px : 3.px);
final paddingAll6 = EdgeInsets.all(DesktopScreen.isMobile ? 6.px : 12.px);
final paddingAll8 = EdgeInsets.all(DesktopScreen.isMobile ? 8.px : 12.px);
final paddingAll10 = EdgeInsets.all(kPadding10);
final paddingAll14 = EdgeInsets.all(DesktopScreen.isMobile ? 14.px : 26.px);
final paddingAll15 = EdgeInsets.all(kPadding15);
final paddingAll20 = EdgeInsets.all(kPadding20);
final paddingAll22 = EdgeInsets.all(kPadding22);
final paddingAll30 = EdgeInsets.all(DesktopScreen.isMobile ? 30.px : 60.px);
final paddingAll25 = EdgeInsets.all(DesktopScreen.isMobile ? 25.px : 40.px);
final paddingAll12 = EdgeInsets.all(12.sp);

///
///DesktopScreen.isMobile ? 6.px : 12.px;
///
final paddingL15B15T15 =
    EdgeInsets.only(left: kPadding15, top: kPadding15, bottom: kPadding15);

final paddingH10V15 = EdgeInsets.symmetric(
    horizontal: DesktopScreen.isMobile ? 10.px : 16.px,
    vertical: DesktopScreen.isMobile ? 15.px : 25.px);
final paddingH25V10 = EdgeInsets.symmetric(
    horizontal: DesktopScreen.isMobile ? 25.px : 35.px,
    vertical: DesktopScreen.isMobile ? 10.px : 20.px);
///////////////////////////////////////////////////////

//////////Const sized gap /////////////
final gapH2 = SizedBox(height: DesktopScreen.isMobile ? 2.px : 4.px);
final gapH4 = SizedBox(height: DesktopScreen.isMobile ? 4.px : 6.px);
final gapH6 = SizedBox(height: DesktopScreen.isMobile ? 6.px : 10.px);
final gapH8 = SizedBox(height: DesktopScreen.isMobile ? 8.px : 10.px);
final gapH10 = SizedBox(height: DesktopScreen.isMobile ? 10.px : 18.px);
final gapH12 = SizedBox(height: DesktopScreen.isMobile ? 12.px : 20.px);
final gapH14 = SizedBox(height: DesktopScreen.isMobile ? 14.px : 24.px);
final gapH16 = SizedBox(height: DesktopScreen.isMobile ? 16.px : 26.px);
final gapH18 = SizedBox(height: 18.px);
final gapH20 = SizedBox(height: DesktopScreen.isMobile ? 20.px : 26.px);
final gapH22 = SizedBox(height: 22.px);
final gapH24 = SizedBox(height: 24.px);
final gapH26 = SizedBox(height: 26.px);
final gapH28 = SizedBox(height: DesktopScreen.isMobile ? 28.px : 38.px);
final gapH30 = SizedBox(height: DesktopScreen.isMobile ? 30.px : 40.px);
final gapH32 = SizedBox(height: DesktopScreen.isMobile ? 32.px : 42.px);
final gapW4 = SizedBox(width: 4.px);
final gapW6 = SizedBox(width: 6.px);
final gapW8 = SizedBox(width: DesktopScreen.isMobile ? 8.px : 14.px);
final gapW10 =
    SizedBox(width: DesktopScreen.isMobile ? 10.px : DesktopScreen.width / 4.5);
final gapW12 = SizedBox(width: DesktopScreen.isMobile ? 12.px : 18.px);
final gapW14 = SizedBox(width: DesktopScreen.isMobile ? 14.px : 22.px);
final gapW16 = SizedBox(width: 16.px);
final gapW18 = SizedBox(width: DesktopScreen.isMobile ? 18.px : 28.px);
final gapW20 = SizedBox(width: DesktopScreen.isMobile ? 20.px : 28.px);
final gapW22 = SizedBox(width: 22.px);
final gapW24 = SizedBox(width: 24.px);
final gapW26 = SizedBox(width: DesktopScreen.isMobile ? 26.px : 36.px);
final gapW28 = SizedBox(width: 28.px);
final gapW30 = SizedBox(width: 30.px);
final gapW32 = SizedBox(width: 32.px);
final gapH40 = SizedBox(height: DesktopScreen.isMobile ? 40.px : 50.px);
///////////////////////////////////
///
///
///
///
////////////const padding///////////////

final double kPadding2 = DesktopScreen.isMobile ? 2.px : 4.px;
final double kPadding4 = DesktopScreen.isMobile ? 4.px : 8.px;
final double kPadding6 = DesktopScreen.isMobile ? 6.px : 12.px;
final double kPadding8 = DesktopScreen.isMobile ? 8.px : 12.px;
final double kPadding10 = 10.px;
final double kPadding12 = DesktopScreen.isMobile ? 12.px : 22.px;
final double kPadding14 = DesktopScreen.isMobile ? 14.px : 28.px;
final double kPadding16 = DesktopScreen.isMobile ? 16.px : 28.px;
final double kPadding18 = DesktopScreen.isMobile ? 18.px : 28.px;

final double kPadding24 = DesktopScreen.isMobile ? 24.px : 34.px;
final double kPadding26 = DesktopScreen.isMobile ? 26.px : 36.px;

//////////////////////////////////
///
///
//////////const Radius//////////////

final double kRadius2 = DesktopScreen.isMobile ? 2.px : 4;
final double kRadius4 = DesktopScreen.isMobile ? 4.px : 6;
final double kRadius6 = DesktopScreen.isMobile ? 6.px : 8;
final BorderRadiusGeometry radius4 =
    BorderRadius.circular(DesktopScreen.isMobile ? 4.px : 10.px);
final BorderRadiusGeometry radius6 =
    BorderRadius.circular(DesktopScreen.isMobile ? 6.px : 14.px);
final double kRadius8 = DesktopScreen.isMobile ? 8.px : 16.px;
final double kRadius10 = 10.px;
final double kRadius12 = 12.px;
final double kRadius14 = 14.px;
final double kRadius16 = DesktopScreen.isMobile ? 16.px : 24;
final double kRadius18 = DesktopScreen.isMobile ? 18.px : 28;
final double kRadius20 = DesktopScreen.isMobile ? 20.px : 30.px;
final double kRadius22 = 22.px;
final double kRadius24 = 24.px;
final double kRadius26 = 26.px;
final double kRadius50 = 50.px;
/////////////////////////////////////
///
///
///
////////////////////const Position/////////////////
final double positionBottom15 = DesktopScreen.isMobile ? 15.px : 35.px;
final double position10 = DesktopScreen.isMobile ? 10.px : 20.px;
const double circleAvatarRadius17 = 17;
const double circleAvatarRadius16 = 16;
