import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:water_reminder/constants.dart';
import 'package:water_reminder/navigation/app_pages.dart';
import 'package:water_reminder/views/home/home_controller.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(controller.storage.hasData(Constants.token).toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await controller.removeToken();
          Get.offNamed(AppRoutes.signIn);
        },
      ),
    );
  }
}
