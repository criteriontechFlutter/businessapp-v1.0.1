
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/otp/controller/otp_controller.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPView extends GetWidget<OTPController> {
  const OTPView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: Container(
          height: mediaQueryData.size.height,
          width: mediaQueryData.size.width,
          child: SafeArea(
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(ImageConstant.orange)),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(ImageConstant.carrot)),
                Positioned(
                    bottom: 50, left: 0, child: Image.asset(ImageConstant.tomato)),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: BlurryContainer(
                    blur: 37,
                    child: Container(
                      height: mediaQueryData.size.height - 21,
                      width: mediaQueryData.size.width - 21,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: SizedBox(),
                            ),
                            Center(
                              child: FadeIn(
                                delay: Duration(seconds: 1),
                                duration: Duration(seconds: 2),
                                child: SizedBox(
                                    height: 84,
                                    width: 182,
                                    child: Image.asset(ImageConstant.logo2)),
                              ),
                            ),
                            SizedBox(height: 47),
                            Text(
                              'Enter your 4-digit code',
                              style: MyText.largeBlackBold,
                            ),
                            SizedBox(
                              height: 23,
                            ),
                            Text(
                              'A 4 digit code has been sent to your',
                              style: MyText.smallGrey,
                            ),
                            Text(
                              'registered mobile number',
                              style: MyText.smallGrey,
                            ),
                            SizedBox(
                              height: 32,
                            ),


                            PinCodeTextField(
                              appContext: context,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              length: 4,
                              obscureText: true,
                              obscuringCharacter: '*',
                              // obscuringWidget: FlutterLogo(
                              //   size: 24,
                              // ),
                              blinkWhenObscuring: true,
                              animationType: AnimationType.fade,
                              validator: (v) {
                                if (v!.length < 4) {
                                  return '';
                                }
                                else {
                                  return null;
                                }
                              },
                              pinTheme: PinTheme(
                                inactiveFillColor: Colors.white,
                                inactiveColor: Colors.white,
                                activeColor: Colors.white,
                                activeFillColor:Colors.white,
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(5),
                                fieldHeight: 50,
                                fieldWidth: 40,
                              ),
                              cursorColor: Colors.black,
                              animationDuration: const Duration(milliseconds: 300),
                              enableActiveFill: true,
                              keyboardType: TextInputType.number,
                              boxShadows: const [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  color: Colors.black12,
                                  blurRadius: 10,
                                )
                              ],
                              onCompleted: (v) {
                                Get.toNamed(AppRoutes.registration);
                                print(v.toString());
                                },
                              onChanged: (value) {

                              },
                              beforeTextPaste: (text) {
                                return true;
                              },
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            InkWell(
                              onTap: (){
                                print('feature coming soon');
                              },
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(fontSize: 16.0,color: HexColor('#3F4A46')),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'not received the code? ',
                                    ),
                                    TextSpan(text: 'Resend',style: TextStyle(color: MyColors().primaryColor,  fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: SizedBox()),
                          ],
                        ),
                      ),
                    ),
                    elevation: 0,
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                    padding: const EdgeInsets.all(8),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

}