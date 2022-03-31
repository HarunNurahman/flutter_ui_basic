import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_basic/new-ui/pages/homescreen.dart';
import 'package:flutter_ui_basic/new-ui/pages/messages.dart';

// import 'basic-ui/homepage.dart';

void main() => runApp(DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      // home: const HomePage(),
      home: const Messages(),
    );
  }
}
