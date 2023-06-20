import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/external_libs/advanced_range_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsRangeSlider extends StatelessWidget {
  const SettingsRangeSlider({
    super.key,
    required this.currentValue,
    required this.maxValue,
    required this.onChanged,
    this.handlerHeight,
    this.handlerWidth,
    this.minValue = 0,
    this.inactiveColor,
  });

  final int currentValue;
  final int maxValue;
  final int minValue;
  final double? handlerHeight;
  final double? handlerWidth;
  final Color? inactiveColor;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return AdvancedRangeSlider(
      touchSize: 06,
      onDragCompleted: (__, currentValue, _) {
        final currentValueDouble = (currentValue as double?) ?? 0;
        onChanged(currentValueDouble.toInt());
      },
      min: 0,
      handlerHeight: handlerHeight ?? 10,
      handlerWidth: handlerWidth ?? 10,
      max: maxValue.toDouble(),
      values: [currentValue.toDouble()],
      handler: FlutterSliderHandler(
        decoration: const BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Container(
          height: 10.px,
          width: 10.px,
          decoration: BoxDecoration(
            color: themeData.primaryColor,
            shape: BoxShape.circle,
          ),
        ),
      ),
      trackBar: FlutterSliderTrackBar(
        inactiveTrackBarHeight: 10.px,
        activeTrackBarHeight: 10.px,
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(40.px),
          color: inactiveColor ?? themeData.primaryColor.withAlpha(40),
        ),
        activeTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(40.px),
          color: themeData.primaryColor,
        ),
      ),
      tooltip: FlutterSliderTooltip(
        disabled: true,
        format: (value) {
          // int.parse(value);
          return value.toString().replaceAll(".0", "");
        },
        textStyle: TextStyle(
          color: themeData.primaryColor,
          fontSize: 18.px,
          fontWeight: FontWeight.w600,
        ),
        alwaysShowTooltip: false,
        boxStyle: FlutterSliderTooltipBox(
          decoration: BoxDecoration(
            color: themeData.cardColor,
            borderRadius: BorderRadius.circular(8.px),
            boxShadow: [
              BoxShadow(
                color: themeData.primaryColor.withAlpha(40),
                blurRadius: 5.px,
                spreadRadius: 1.px,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
