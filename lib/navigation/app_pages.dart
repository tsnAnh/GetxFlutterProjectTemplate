import 'package:get/get.dart';
import 'package:water_reminder/bindings/home_binding.dart';
import 'package:water_reminder/bindings/sign_in_binding.dart';
import 'package:water_reminder/middlewares/auth_guard.dart';
import 'package:water_reminder/views/home/home.dart';
import 'package:water_reminder/views/sign_in/sign_in.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const Home(),
      binding: HomeBinding(),
      middlewares: [
        AuthGuard(),
      ],
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SignIn(),
      binding: SignInBinding(),
    ),
    GetPage(name: AppRoutes.signUp, page: () => throw Exception()),
  ];
}
