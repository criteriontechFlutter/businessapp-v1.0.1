

import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/Contacts/controlelr/contact_controller.dart';

class ContactBinding extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut(() => ContactController() );
  }

}