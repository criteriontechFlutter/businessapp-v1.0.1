
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/splash_screen/models/splash_model.dart';

/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  // @override
  // void onReady() {
  //   Future.delayed(const Duration(milliseconds: 3000), () {
  //     Get.offNamed(
  //       AppRoutes.login,
  //     );
  //   });
  // }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.intro,
      );
    });
  }
}
