

import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/dealer/controller/dealer_controller.dart';


class DealerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DealerController());
  }

}