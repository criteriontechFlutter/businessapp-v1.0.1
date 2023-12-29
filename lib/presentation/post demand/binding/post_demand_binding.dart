
import 'package:businessapp/core/app_export.dart';

import '../controller/post_demand_controller.dart';

class PostDemandBindind extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PostDemandController());
  }

}