import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as rs;
import 'package:get/get.dart';

class DesktopScreen {
  DesktopScreen._() {
    _height = Get.height;
    _width = Get.width;
    _resetIfInvalid();
  }

  static void setUp() {
    _height = Get.height;
    _width = Get.width;
    _resetIfInvalid();
  }

  static double? _width;
  static double? _height;

  static double get width {
    _width ??= Get.width;
    return _width!;
  }

  static double get height {
    _height ??= Get.height;
    return _height!;
  }

  static void _resetIfInvalid() {
    if (_width! < 10 || _height! < 10) {
      _width = null;
      _height = null;
    }
  }

  static bool get isMobile => rs.Device.screenType == rs.ScreenType.mobile;
}

enum ScreenType { mobile, tablet, desktop }

extension DesktopScreenWidth on Widget {
  static double? _onePercentWidth;

  double get onePercentWidth {
    const double onePercent = 0.01;
    _onePercentWidth ??= (DesktopScreen.width * onePercent).roundToDouble();
    return _onePercentWidth!;
  }

  static double? _twoPercentWidth;

  double get twoPercentWidth {
    const double twoPercent = 0.02;
    _twoPercentWidth ??= (DesktopScreen.width * twoPercent).roundToDouble();
    return _twoPercentWidth!;
  }

  static double? _threePercentWidth;

  double get threePercentWidth {
    const double threePercent = 0.03;
    _threePercentWidth ??= (DesktopScreen.width * threePercent).roundToDouble();
    return _threePercentWidth!;
  }

  static double? _fourPercentWidth;

  double get fourPercentWidth {
    const double fourPercent = 0.04;
    _fourPercentWidth ??= (DesktopScreen.width * fourPercent).roundToDouble();
    return _fourPercentWidth!;
  }

  static double? _fivePercentWidth;

  double get fivePercentWidth {
    const double fivePercent = 0.05;
    _fivePercentWidth ??= (DesktopScreen.width * fivePercent).roundToDouble();
    return _fivePercentWidth!;
  }

  static double? _sixPercentWidth;

  double get sixPercentWidth {
    const double sixPercent = 0.06;
    _sixPercentWidth ??= (DesktopScreen.width * sixPercent).roundToDouble();
    return _sixPercentWidth!;
  }

  static double? _sevenPercentWidth;

  double get sevenPercentWidth {
    const double sevenPercent = 0.07;
    _sevenPercentWidth ??= (DesktopScreen.width * sevenPercent).roundToDouble();
    return _sevenPercentWidth!;
  }

  static double? _eightPercentWidth;

  double get eightPercentWidth {
    _eightPercentWidth ??= (DesktopScreen.width * 0.08).roundToDouble();
    return _eightPercentWidth!;
  }

  static double? _fortyPercentWidth;

  double get fortyPercentWidth {
    const double fortyPercent = 0.40;
    _fortyPercentWidth ??= (DesktopScreen.width * fortyPercent).roundToDouble();
    return _fortyPercentWidth!;
  }

  static double? _seventyPercentWidth;

  double get seventyPercentWidth {
    const double seventyPercent = 0.70;
    _seventyPercentWidth ??=
        (DesktopScreen.height * seventyPercent).roundToDouble();
    return _seventyPercentWidth!;
  }
}

extension DeviceExt on num {
  double get cm => this * 37.8;

  double get mm => this * 3.78;

  double get Q => this * 0.945;

  double get inches => this * 96;

  double get pc => this * 16;

  double get pt => this * inches / 72;

  double get vmin => this * min(DesktopScreen.height, DesktopScreen.width) / 100;

  double get vmax => this * max(DesktopScreen.height, DesktopScreen.width) / 100;

  double get percentHeight => this * DesktopScreen.height / 100;

  double get percentWidth => this * DesktopScreen.width / 100;
}
