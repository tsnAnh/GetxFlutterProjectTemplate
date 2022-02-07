import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:water_reminder/bindings/app_binding.dart';
import 'package:water_reminder/navigation/app_pages.dart';
import 'package:water_reminder/theme/app_theme.dart';

class WaterReminderApp extends StatelessWidget {
  const WaterReminderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.home,
      defaultTransition: Transition.native,
    );
  }
}
