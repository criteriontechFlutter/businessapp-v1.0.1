
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/splash_screen/controller/splash_controller.dart';




class Registration extends GetWidget<SplashController> {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var  width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: mediaQueryData.size.height,
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
                  Align(
                      alignment: Alignment.centerRight,
                      child: Visibility(
                        visible: width>600,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FadeIn(
                            duration: Duration(seconds: 2),
                              child: Image.asset(ImageConstant.logo2,width: width-700,fit: BoxFit.fitWidth,)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
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
                          padding:  EdgeInsets.symmetric(horizontal:kIsWeb?50: 21.0,vertical: 20),
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
                                'Create New Account',
                                style: MyText.largeBlackBold,
                              ),
                              SizedBox(
                                height: 23,
                              ),
                              Text(
                                'Enter your credentials to continue',
                                style: MyText.smallGrey,
                              ),

                              SizedBox(
                                height: 25,
                              ),

                              CustomTextField(
                                image:ImageConstant.person,
                                hintText:'Username',
                              ),
                              SizedBox(height: 19,),
                              CustomTextField(
                                image:ImageConstant.email,
                                hintText:'Email',
                              ),
                              SizedBox(height: 19,),
                              CustomTextField(
                                isPassword: true,
                                image:ImageConstant.lock,
                                hintText:'Password',
                              ),
                              SizedBox(height: 19),
                              CustomTextField(
                                isPassword: true,
                                image:ImageConstant.lock,
                                hintText:'Confirm Password',
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              PrimaryButton(
                                  text:'Signup',
                                  onTap:(){
                                    Get.toNamed(AppRoutes.navigation);
                                  }
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.check_box_outline_blank,color: HexColor('#D9D9D9'),),
                                  SizedBox(width: 7),
                                  Expanded(
                                    child: RichText(
                                      overflow: TextOverflow.visible,
                                      text: TextSpan(
                                        style: MyText.extraSmallGrey,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'By continuing you agree to our ',
                                          ),
                                          TextSpan(text: 'Terms of Service and Privacy Policy.',style: TextStyle(color: HexColor('#53B175'),  fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),

                              Expanded( flex: 2,
                                  child: SizedBox()),
                              InkWell(
                                onTap: (){


                                },
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(fontSize: 16.0,color: HexColor('#3F4A46')),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Already have an account? ',
                                      ),
                                      TextSpan(text: 'Login',style: TextStyle(color: MyColors().primaryColor,  fontWeight: FontWeight.w400)),
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
          ),
        ));
  }
}
