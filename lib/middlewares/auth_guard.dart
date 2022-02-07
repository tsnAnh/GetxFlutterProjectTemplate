import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:water_reminder/constants.dart';
import 'package:water_reminder/navigation/app_pages.dart';

import '../services/storage_service.dart';

class AuthGuard extends GetMiddleware {
  final StorageService _storageService = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    return _storageService.hasData(Constants.token)
        ? null
        : const RouteSettings(name: AppRoutes.signIn);
  }
}
