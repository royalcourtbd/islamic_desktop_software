import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/core/util/desktop_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsDropDownOption extends StatelessWidget {
  final String? selectedValue;
  const SettingsDropDownOption({
    super.key,
    required this.title,
    required this.value,
    this.onChanged,
    this.selectedValue,
  });

  final String title;
  final List<String> value;

  final void Function()? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: TextUtils.bodyTitleText(),
        ),
        gapH10,
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffF8F9FA),
            borderRadius: BorderRadius.circular(kRadius6),
          ),
          width: double.infinity,
          padding: paddingAll10,
          height: 52.px,
          child: DropdownButton(
            borderRadius: BorderRadius.circular(10.px),
            underline: const SizedBox.shrink(),
            isExpanded: true,
            icon: SvgPicture.asset(
              SvgPath.icRight,
              colorFilter: Get.isDarkMode
                  ? const ColorFilter.mode(
                      DesktopAppColors.darkTitleColor, BlendMode.srcATop)
                  : null,
              height: DesktopScreen.isMobile ? 6 : 10,
            ),
            dropdownColor:
                Get.isDarkMode ? const Color(0xff474747) : Colors.white,
            hint: Text(
              value.first,
              style: TextUtils.bodySubtitleText(),
            ),
            value: selectedValue,
            items: value
                .map(
                  (item) => DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: TextUtils.bodySubtitleText(),
                    ),
                  ),
                )
                .toList(),
            onChanged: (String? value) {},
          ),
        ),
      ],
    );
  }
}
