import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/fontfamily/font_family.dart';
import 'package:islamic_desktop_software/core/util/desktop_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: FontFamily.poppins,
  brightness: Brightness.light,
  primaryColor: DesktopAppColors.primaryColor,
  scaffoldBackgroundColor: DesktopAppColors.backgroundColor,
  cardColor: DesktopAppColors.lightCardColor,
  appBarTheme: const AppBarTheme(
    color: Color(0xff0E9577),
    titleTextStyle: TextStyle(color: Colors.black),
    iconTheme: IconThemeData(
      color: Color(0xFF1AA483),
    ),
    elevation: 0,
  ),
  buttonTheme: const ButtonThemeData(
    padding: EdgeInsets.only(left: 16, right: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    buttonColor: Color(0xffe0e0e0),
    disabledColor: Color(0x61000000),
    highlightColor: Color(0x29000000),
    splashColor: Color(0x1f000000),
    focusColor: Color(0x1f000000),
    hoverColor: Color(0x0a000000),
    textTheme: ButtonTextTheme.primary,
    colorScheme: ColorScheme(
      primary: Color(0xff10ad72),
      secondary: DesktopAppColors.secondaryColor,
      surface: DesktopAppColors.backgroundColor,
      background: Color(0xffa2f6d7),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xff000000),
      onSurface: Color(0xff000000),
      onBackground: Color(0xffffffff),
      onError: Color(0xffffffff),
      brightness: Brightness.light,
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: DesktopAppColors.backgroundColor,
    thickness: 1,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w700,
      color: DesktopAppColors.titleColor,
      fontSize: DesktopScreen.isMobile ? 18.px : 30.px,
    ),
    displayMedium: TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w700,
      color: DesktopAppColors.titleColor,
      fontSize: DesktopScreen.isMobile ? 18.px : 30.px,
    ),
    titleLarge: TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w700,
      color: DesktopAppColors.titleColor,
      fontSize: DesktopScreen.isMobile ? 20.px : 34.px,
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w600,
      color: DesktopAppColors.titleColor,
      fontSize: DesktopScreen.isMobile ? 12.px : 22.px,
    ),
    bodyMedium: TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w600,
      color: DesktopAppColors.titleColor,
      fontSize: DesktopScreen.isMobile ? 14.px : 22.px,
    ),
    bodySmall: TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w400,
      height: 1.2,
      color: DesktopAppColors.subTitleColor,
      fontSize: DesktopScreen.isMobile ? 12.px : 15.sp,
    ),
    titleSmall: TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w800,
      color: DesktopAppColors.titleColor,
      fontSize: DesktopScreen.isMobile ? 16.px : 28.px,
    ),
  ),
  colorScheme: const ColorScheme(
    primary: DesktopAppColors.primaryColor,
    onPrimary: DesktopAppColors.whiteColor,
    secondary: DesktopAppColors.secondaryColor,
    onSecondary: Color(0xff000000),
    surface: DesktopAppColors.backgroundColor,
    onSurface: Color(0xff000000),
    background: Color(0xffa2f6d7),
    onBackground: Color(0xffffffff),
    onSurfaceVariant: DesktopAppColors.subTitleColor, //subtitle COlor
    outline: Color(0xffA9AFB5), //border color
    error: Color(0xffd32f2f),
    onError: Color(0xffffffff),
    inversePrimary: DesktopAppColors.titleColor,
    onInverseSurface: DesktopAppColors.titleColor,
    brightness: Brightness.light,
  ),
);

/////////dark mode//////////////////
final ThemeData darkTheme = ThemeData(
  fontFamily: FontFamily.poppins,
  brightness: Brightness.dark,
  primaryColor: DesktopAppColors.primaryColor,
  scaffoldBackgroundColor: DesktopAppColors.darkBackgroundColor,
  cardColor: DesktopAppColors.darkCardColor,
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    iconTheme: IconThemeData(
      color: Color(0xFF1AA483),
    ),
    elevation: 0,
  ),
  dividerTheme: const DividerThemeData(
    color: DesktopAppColors.backgroundColor,
    thickness: 1,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w700,
      color: DesktopAppColors.darkTextColro,
      fontSize: DesktopScreen.isMobile ? 18.px : 30.px,
    ),
    bodyLarge: TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w600,
      color: DesktopAppColors.darkTextColro,
      fontSize: 16.px,
    ),
    bodyMedium: TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w600,
      color: DesktopAppColors.darkTextColro,
      fontSize: DesktopScreen.isMobile ? 14.px : 22.px,
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w400,
      color: DesktopAppColors.darkTextColro,
      fontSize: DesktopScreen.isMobile ? 12.px : 20.px,
    ),
    titleSmall: TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w800,
      color: DesktopAppColors.darkTitleColor,
      fontSize: DesktopScreen.isMobile ? 16.px : 28.px,
    ),
    bodySmall: TextStyle(
      fontFamily: FontFamily.roboto,
      fontWeight: FontWeight.w400,
      color: DesktopAppColors.whiteColor.withOpacity(.6),
      height: 1.5,
      fontSize: DesktopScreen.isMobile ? 12.px : 15.sp,
    ),
  ),
  colorScheme: const ColorScheme(
    primary: DesktopAppColors.primaryColor,
    onPrimary: DesktopAppColors.whiteColor,
    secondary: DesktopAppColors.darkBackgroundColor,
    onSecondary: Color(0xff000000),
    surface: DesktopAppColors.darkBackgroundColor,
    onSurface: Color(0xff000000),
    background: Color(0xffa2f6d7),
    onBackground: Color(0xffffffff),
    error: Color(0xffd32f2f),
    onError: Color(0xffffffff),
    onSurfaceVariant: DesktopAppColors.darkSubTitleColor, //subtitle COlor
    inversePrimary: DesktopAppColors.darkTitleColor,
    onInverseSurface: DesktopAppColors.darkTitleColor,
    outline: Color(0xffA9AFB5), //border color
    onTertiary: Color(0xff474747),
    brightness: Brightness.dark,
  ),
);
