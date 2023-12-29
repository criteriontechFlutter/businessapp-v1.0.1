
import 'package:get/get.dart';
import '../controller/registration_controlelr.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationController());
  }
}