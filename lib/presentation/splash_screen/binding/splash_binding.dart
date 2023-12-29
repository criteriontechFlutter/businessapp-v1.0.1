import 'package:businessapp/presentation/intro/controller/intro_controller.dart';
import 'package:businessapp/presentation/login/controller/ligin_controller.dart';
import 'package:businessapp/presentation/login/login_view.dart';

import '../controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    // Get.lazyPut(() => IntroController());
    // Get.lazyPut(() => LoginController());
  }
}
