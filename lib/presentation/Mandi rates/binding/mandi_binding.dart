
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/Mandi%20rates/controller/mandi_rates_controller.dart';

class MandiRatesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MandiRatesController());
  }

}

