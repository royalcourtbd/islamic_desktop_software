import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_range_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsSliderOption extends StatelessWidget {
  const SettingsSliderOption({
    super.key,
    required this.title,
    required this.currentValue,
    required this.minValue,
    required this.maxValue,
    required this.onChanged,
  });

  final String title;
  final int currentValue;
  final int minValue;
  final int maxValue;
  final ValueChanged<int> onChanged;

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
        SizedBox(
          height: 40.px,
          child: Padding(
            padding: EdgeInsets.zero,
            child: Row(
              children: [
                Expanded(
                  child: SettingsRangeSlider(
                    currentValue: currentValue,
                    maxValue: maxValue,
                    minValue: minValue,
                    onChanged: onChanged,
                  ),
                ),
                gapW10,
                Text(
                  currentValue.toString(),
                  textAlign: TextAlign.start,
                  style: TextUtils.bodySubtitleText(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
