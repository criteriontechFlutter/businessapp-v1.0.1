
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/intro/controller/intro_controller.dart';


class Intro extends GetWidget<IntroController> {
  const Intro({Key? key}) : super(key: key);

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
                    HexColor('#F45042'),
                    HexColor('#E23636'),
                  ]),
            ),
          ),
          ListView(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(ImageConstant.food)),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 32.0, color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'A whole ',
                            style: TextStyle(color: Colors.white,  fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: 'grocery', style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold)),
                        TextSpan(text: ' store\nat your ',style: TextStyle(
                          fontWeight: FontWeight.w400

                        )),
                        TextSpan(text: 'fingertips',style: TextStyle(
                            color: Colors.white,  fontWeight: FontWeight.bold
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Buy food or groceries online easly',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('only with mobile phone!',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
                ),
              ),

            ],
          ),
          Positioned(
            bottom: 20,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: (){
                    sendNotification();
                    print('soon');
                    Get.toNamed(AppRoutes.login);
                  },
                  child: Container(
                    height: 67,
                    width: 67,
                    decoration: BoxDecoration(
                        color: HexColor('#92C64A'),
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 28),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void sendNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 1,
      channelKey: 'basic_channel',
      title: 'Welcome to Organic Store',
      body: 'This is the notification body.',
    ),
  );
  // await AwesomeNotifications().createNotification(
  //   content: NotificationContent(
  //     id: 2,
  //     channelKey: 'image_channel',
  //     title: 'Image Notification',
  //     body: 'This notification includes an image.',
  //     bigPicture: ImageConstant.logo,
  //   ),
  // );
}