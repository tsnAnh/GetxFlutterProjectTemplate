import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:water_reminder/app.dart';
import 'package:water_reminder/services/storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());
  // FlutterNativeSplash.removeAfter((BuildContext context) => {});
  runApp(const WaterReminderApp());
}
