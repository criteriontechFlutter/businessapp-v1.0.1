

import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/product%20details/controller/product_details_controller.dart';

class ProductDetailsBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => ProductDetailsController());
  }


}