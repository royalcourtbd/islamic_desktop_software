import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/external_libs/expanded_tile.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.tileController,
    required this.title,
    required this.content,
    this.svgPath,
  });

  final ExpandedTileController tileController;
  final String title;
  final Widget content;
  final String? svgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kRadius10),
        border: Border.all(
          color: const Color(0xffE1E5ED),
        ),
      ),
      child: ExpandedTile(
        leading: SvgPicture.asset(svgPath ?? SvgPath.icFile),
        trailing: SvgPicture.asset(SvgPath.icRight),
        title: Text(
          title,
          style: TextUtils.bodyTitleText(
              fontSize: 16,
              color: tileController.isExpanded
                  ? Theme.of(context).primaryColor
                  : DesktopAppColors.titleColor),
        ),
        content: content,
        controller: tileController,
        theme: ExpandedTileThemeData(
          headerColor: Theme.of(context).cardColor,
          contentBackgroundColor: Theme.of(context).cardColor,
          headerRadius: kRadius10,
          leadingPadding: EdgeInsets.zero,
          headerSplashColor: Theme.of(context).cardColor,
          contentRadius: kRadius10,
        ),
      ),
    );
  }
}
