
import 'package:animated_digit/animated_digit.dart';
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/widgets/filter.dart';
import 'package:businessapp/widgets/searchbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'controller/mandi_rates_controller.dart';

class MandiRatesView extends GetWidget<MandiRatesController> {

  @override
  Widget build(BuildContext context) {
    MandiRatesController a = Get.put(MandiRatesController());
    return GetBuilder(
        init: MandiRatesController(),
        builder: (_) {
          return Container(
            color: MyColors().secondaryColor,
            child: SafeArea(
              child: Scaffold(
                appBar: CustomAppBar(title: 'Mandi rates'),
                body: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView(
                    children: [
                      SizedBox(height: 13),
                      CustomSearchBar(hintText: 'Search'),
                      SizedBox(height: 13),
                      FilterWidget(),
                      SizedBox(height: 20),
                      SizedBox(
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            AnimatedDigitController _controller = AnimatedDigitController(index+2000);
                            return FadeIn(
                              delay: Duration(milliseconds: 200),
                              duration: Duration(seconds: 1),
                              child: Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade50,
                                      spreadRadius: 2,
                                      blurRadius: 50),
                                ]),
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.order);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    color: Colors.white,
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Get.toNamed(
                                                AppRoutes.ProductDetails);
                                          },
                                          child: Image.asset(
                                            ImageConstant.chillies,
                                            height: 64,
                                            width: 64,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text('Green chilli',
                                                  style: MyText
                                                      .lato18B600),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  Text('₹',
                                                      style: MyText
                                                          .lato16Bw600),
                                                  AnimatedDigitWidget(
                                                    controller: _controller,
                                                    textStyle: MyText
                                                        .lato22G400,
                                                    fractionDigits: 2,
                                                    enableSeparator: true,
                                                duration: Duration(seconds: 1
                                                ),
                                                  ),
                                                  Text('/Quintal',
                                                      style: MyText
                                                          .lato16Bw600),
                                                  SvgPicture.asset(
                                                    ImageConstant.up,
                                                    height: 40,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Text('Min ₹1500 - Max ₹4000',
                                                  style: MyText
                                                      .lato12Gw400),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('03-Feb-2023',
                                                style: MyText
                                                    .roboto14G400),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            SizedBox(
                                              height: 36,
                                              child: PrimaryButton(
                                                width: 86,
                                                text: '24 Mandies',
                                                isSmallText: true,
                                                onTap: () {
                                                  Get.toNamed(AppRoutes.productComparison);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}