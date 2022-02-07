import 'package:get/get.dart';
import 'package:water_reminder/constants.dart';
import 'package:water_reminder/services/storage_service.dart';

class HomeController extends GetxController {
  final storage = Get.find<StorageService>();

  Future removeToken() async => storage.remove(Constants.token);
}