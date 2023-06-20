import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/presentation/common/card_container.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SuraNameSection extends StatelessWidget {
  const SuraNameSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardContainer(
          horizontalMargin: 0,
          padding: EdgeInsets.zero,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 24.px, top: 24.px, bottom: 24.px),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Al-Fatiha',
                      style: TextUtils.bodyTitleText(
                          fontWeight: FontWeight.w600, fontSize: 26.px),
                    ),
                    gapH4,
                    Text(
                      'The Opening | Meccan',
                      style: TextUtils.bodySubtitleText(),
                    ),
                    gapH2,
                    Text(
                      'Ayahs : 7',
                      style: TextUtils.bodySubtitleText(),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                  kRadius14,
                )),
                child: Image.asset(
                  SvgPath.imgMakka,
                  height: 100.px,
                  width: 170.px,
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 27.px,
          left: 170.px,
          child: Image.asset(
            SvgPath.imgPlayButton,
            width: 100.px,
            height: 30.px,
          ),
        ),
      ],
    );
  }
}
