
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/product%20comparasion/controller/product_comparasion_controller.dart';

class ProductComparisonBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ProductComparisonController());
  }


}