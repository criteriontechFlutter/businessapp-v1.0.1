

import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/mandi/controller/mandi_controller.dart';

class MandiBindings extends Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => MandiController());
  }

}