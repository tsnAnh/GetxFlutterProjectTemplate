import 'package:get/get.dart';
import 'package:water_reminder/constants.dart';
import 'package:water_reminder/services/storage_service.dart';

class SignInController extends GetxController {
  final StorageService _storage = Get.find();

  var title = 'Con cac';

  Future saveToken(String token) async =>
      await _storage.write(Constants.token, token);
}
