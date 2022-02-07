import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:water_reminder/views/sign_in/sign_in_controller.dart';

import '../../navigation/app_pages.dart';

class SignIn extends GetView<SignInController> {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(controller.title)),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await controller.saveToken('value');
          Get.offNamed(AppRoutes.home);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
