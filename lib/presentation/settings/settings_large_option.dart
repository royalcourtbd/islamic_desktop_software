import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/util/desktop_screen.dart';
import 'package:islamic_desktop_software/core/util/util.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsLargeOption extends StatelessWidget {
  const SettingsLargeOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 28.px),
      padding: EdgeInsets.all(5.px),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.px),
        color: Get.isDarkMode
            ? const Color(0xff474747)
            : DesktopAppColors.whiteColor,
      ),
      child: Row(
        children: [
          ThemeToggleItem(
            title: "White",
            svgPath: SvgPath.icArrowDown,
            isSelected: false,
            onToggle: (p0) => true,
          ),
          SizedBox(width: 6.px),
          ThemeToggleItem(
            title: "Night",
            svgPath: SvgPath.icArrowDown,
            onToggle: (p0) => true,
            isSelected: true,
          )
        ],
      ),
    );
  }
}

class ThemeToggleItem extends StatelessWidget {
  const ThemeToggleItem({
    super.key,
    required this.title,
    required this.svgPath,
    required this.isSelected,
    required this.onToggle,
  });

  final String title;
  final String svgPath;
  final bool isSelected;
  final void Function(bool) onToggle;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Expanded(
      child: GestureDetector(
        onTap: () {
          onToggle(false);
        },
        child: Container(
          padding: EdgeInsets.all(DesktopScreen.isMobile ? 10.px : 17.px),
          decoration: BoxDecoration(
            color: isSelected ? themeData.primaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(4.px),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: DesktopScreen.isMobile ? 12.px : 22.px,
                  color: isSelected
                      ? Colors.white
                      : themeData.textTheme.bodyMedium?.color,
                ),
              ),
              SizedBox(width: 5.px),
              SvgPicture.asset(
                svgPath,
                width: DesktopScreen.isMobile ? 14.px : 18.px,
                colorFilter: buildColorFilterToChangeColor(isSelected
                    ? Colors.white
                    : themeData.textTheme.bodyMedium?.color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
