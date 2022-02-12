import 'package:get/get.dart';
import 'package:getx_flutter_project_template/views/sign_in/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}
