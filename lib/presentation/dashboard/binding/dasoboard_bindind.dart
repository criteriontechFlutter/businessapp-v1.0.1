import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/dashboard/controller/dasoboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
