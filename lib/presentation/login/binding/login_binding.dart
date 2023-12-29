import 'package:businessapp/presentation/intro/controller/intro_controller.dart';
import 'package:get/get.dart';
import '../controller/ligin_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
