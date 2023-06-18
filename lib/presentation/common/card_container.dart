import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class CardContainer extends StatelessWidget {
  final Color? bgColor;
  final double? horizontalMargin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final BorderRadiusGeometry? borderRadius;
  final List<BoxShadow>? boxShadow;
  final Widget child;
  const CardContainer(
      {Key? key,
      required this.child,
      this.bgColor,
      this.horizontalMargin,
      this.onTap,
      this.padding,
      this.borderRadius,
      this.boxShadow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: horizontalMargin ?? 15.px,
        ),
        padding: padding ?? paddingAll15,
        decoration: BoxDecoration(
            color: bgColor ?? Theme.of(context).cardColor,
            borderRadius: borderRadius ?? BorderRadius.circular(kRadius14),
            boxShadow: boxShadow ?? []),
        child: child,
      ),
    );
  }
}
