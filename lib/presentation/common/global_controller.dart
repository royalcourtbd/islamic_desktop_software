import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  final RxDouble width = 0.0.obs;
  final RxDouble height = 0.0.obs;

  void observeScreenSize() {
    FlutterView window = Get.window;
    final Size screenSize = window.physicalSize / window.devicePixelRatio;
    width.value = screenSize.width;
    height.value = screenSize.height;
    log('Screen Width: ${screenSize.width}');
    log('Screen Height: ${screenSize.height}');
  }



   double get searchBoxWidth {
    const double twoPercent = .3;
    final double boxWidth = width.value >= 1920
        ? 620
        : width.value >= 1200
            ? 520
            : width.value * twoPercent;
    return boxWidth;
  }
}
