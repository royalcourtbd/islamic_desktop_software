import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/external_libs/hadith_app_switch_button.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsToggleOption extends StatelessWidget {
  const SettingsToggleOption({
    super.key,
    required this.title,
    required this.onToggle,
    required this.toggled,
    this.textColor,
  });

  final String title;
  final ValueChanged<bool> onToggle;
  final Color? textColor;
  final bool toggled;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextUtils.bodyTitleText(color: textColor),
        ),
        const Spacer(),
        HadithAppSwitchButton(
          toggleColor: const Color(0xff3D4953).withOpacity(0.5),
          height: 25.px,
          width: 50.px,
          padding: 2.px,
          toggleSize: 20.px,
          borderRadius: 15.px,
          toggled: toggled,
          onToggle: onToggle,
        ),
      ],
    );
  }
}
