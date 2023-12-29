


import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/Navigation%20bar%20/controller/navigation_controller.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class NavigationBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(()=>NavigationController());
  }
}