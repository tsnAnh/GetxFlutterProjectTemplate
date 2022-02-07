import 'package:get/get.dart';
import 'package:water_reminder/views/sign_in/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}