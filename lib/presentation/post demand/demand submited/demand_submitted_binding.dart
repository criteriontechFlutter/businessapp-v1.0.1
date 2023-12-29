
import 'package:businessapp/core/app_export.dart';
import 'demand_submittedcontroller.dart';

class DemandSubmittedBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => DemandSubmittedController());
  }

}