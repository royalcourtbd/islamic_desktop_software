import 'dart:io';

import 'package:islamic_desktop_software/core/util/desktop_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



double actionButtonHeight = DesktopScreen.isMobile ? 48.px : 75.px;
bool isIos = Platform.isIOS;
double kPaddingHorizontal = DesktopScreen.isMobile ? 15.px : 25.px;
const kBorderRadius = 16.0;
