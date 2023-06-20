import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/util/desktop_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsCardHeader extends StatelessWidget {
  const SettingsCardHeader({
    super.key,
    required this.title,
    required this.svgPath,
  });

  final String title;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          svgPath,
          colorFilter: Get.isDarkMode
              ? const ColorFilter.mode(
                  DesktopAppColors.darkTitleColor, BlendMode.srcATop)
              : null,
          height: DesktopScreen.isMobile ? 20.px : 30.px,
          // width: 17.px,
        ),
        SizedBox(width: 8.px),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: DesktopScreen.isMobile ? 14.px : 26.px,
              ),
        ),
      ],
    );
  }
}
