

import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/orders/controller/orders_controller.dart';

class OrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrdersController());
  }

}