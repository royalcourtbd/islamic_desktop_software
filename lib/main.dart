import 'dart:io';

import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/presentation/islamic_desktop_software.dart';
import 'package:window_size/window_size.dart';

void main() {
  _initialiseServices();

  runApp(const IslamicDesktopSoftware());
}

Future<void> _initialiseServices() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Islamic Desktop Software');
    setWindowMinSize(const Size(800, 500));
    setWindowMaxSize(Size.infinite);
  }
}
