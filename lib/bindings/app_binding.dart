import 'package:get/get.dart';
import 'package:logger/logger.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Logger(level: Level.debug));
  }
}
