
import 'package:businessapp/presentation/intro/controller/intro_controller.dart';
import 'package:get/get.dart';

class IntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
  }
}
