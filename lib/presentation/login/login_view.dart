
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/login/controller/ligin_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
  var  height = MediaQuery.of(context).size.height;
  var  width = MediaQuery.of(context).size.width;
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
                Align(
                    alignment: Alignment.centerRight,
                    child: Visibility(
                      visible: width>600,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: FadeInLeft(
                          delay: Duration(seconds: 1),
                          duration: Duration(seconds: 1),
                          child: Image.asset(ImageConstant.logo2,width: width-800,fit: BoxFit.fitWidth,
                            ),
                        ),
                      ),
                    )),
                Positioned(
                    bottom: 50,
                    left: 0,
                    child: Image.asset(ImageConstant.tomato)),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:kIsWeb?width/10: 21.0,vertical: 20),
                  child: BlurryContainer(
                    width: width<=600?width:600,
                    blur: 37,
                    child: Container(
                      height: mediaQueryData.size.height - 21,
                      width: width<=600?width:600,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          child: ListView(
                            shrinkWrap: true,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Expanded(
                              //   flex: 2,
                              //   child: SizedBox(),
                              // ),
                              SizedBox(height: height/20,),
                              Center(
                                child: Visibility(
                                  visible: width<=800,
                                  child: FadeIn(
                                    delay: Duration(seconds: 1),
                                    duration: Duration(seconds: 2),
                                    child: SizedBox(
                                        height: 84,
                                        width: 182,
                                        child: Image.asset(ImageConstant.logo2)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 47),
                              Center(
                                child: Text(
                                  'Welcome Back',
                                  style: MyText.largeBlackBold,
                                ),
                              ),
                              SizedBox(
                                height: 23,
                              ),
                              Center(
                                child: Text(
                                  'Login to your account using mobile number',
                                  style: MyText.smallGrey,
                                ),
                              ),
                              Center(
                                child: Text(
                                  'or social networks',
                                  style: MyText.smallGrey,
                                ),
                              ),
                              SizedBox(height: 32),
                              Center(child: PhoneField()),
                              SizedBox(height: height/20,),
                              Center(
                                child: Text(
                                  'Or continue with social account',
                                  style: MyText.smallGrey,
                                ),
                              ),
                              SizedBox(height: height/20,),
                              Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(ImageConstant.google),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Text(
                                      'Continue with Google',
                                      style: MyText.smallBlack,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(ImageConstant.facebook),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Text(
                                      'Continue with Facebook',
                                      style: MyText.smallBlack
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: height/20),
                              PrimaryButton(
                                text:'Login',
                                onTap:(){
                                  Get.toNamed(AppRoutes.otp);
                              }
                              ),
                              SizedBox(height: height/20,),
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    print('feature coming soon');
                                  },
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                          fontSize: 16.0, color: HexColor('#3F4A46')),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Didn’t have an account? '),
                                        TextSpan(
                                            text: 'Register',
                                            style: TextStyle(
                                                color: MyColors().primaryColor,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: height/20),
                            ],
                          ),
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

class PhoneField extends StatelessWidget {
  const PhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: IntlPhoneField(
        ///
        invalidNumberMessage: '',
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          filled: true,
          isDense: true,
          fillColor: Colors.transparent,
          counterText: '',
          //contentPadding: widget.isPasswordField==null? EdgeInsets.all(5):widget.isPasswordField? EdgeInsets.fromLTRB(5,5,5,5):EdgeInsets.all(5),
          contentPadding: const EdgeInsets.all(12),
          hintText: 'XXX-XXX-1234',
          hintStyle: TextStyle(color: HexColor('#D9D9D9'), fontSize: 16),
          alignLabelWithHint: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: Colors.transparent, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
        initialCountryCode: 'IN',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
        validator: (value) {
          if (value == null) {
            return '';
          } else {
            return null;
          }
        },
      ),
    );
  }
}
