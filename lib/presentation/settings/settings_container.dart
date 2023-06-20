import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/util/desktop_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsContainer extends StatelessWidget {
  const SettingsContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: DesktopScreen.isMobile ? 10.px : 25.px,
        vertical: DesktopScreen.isMobile ? 5.px : 15.px,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: DesktopScreen.isMobile ? 15.px : 25.px,
        vertical: DesktopScreen.isMobile ? 15.px : 25.px,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.px),
      ),
      child: child,
    );
  }
}
