
import 'package:blurrycontainer/blurrycontainer.dart';
import 'controller/splash_controller.dart';
import 'package:businessapp/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      HexColor('#FFB25F'),
                      HexColor('#EA5151'),
                    ]
                )
            ),
          ),
          Center(
            child:
            BlurryContainer(
              blur:20,
              child: Container(
                height: 336,width: 336,
                decoration: BoxDecoration(
                    color: Colors.white12,
                    shape: BoxShape.circle,
                ),
                child: Image.asset(ImageConstant.logo),
              ),
              elevation: 0,
              color: Colors.transparent,
              padding: const EdgeInsets.all(8),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
