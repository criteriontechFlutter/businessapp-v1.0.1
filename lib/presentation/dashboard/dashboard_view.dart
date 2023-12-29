import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/core/hex.dart';
import 'package:businessapp/presentation/dashboard/controller/dasoboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../../widgets/mandicard.dart';

class DashboardView extends GetWidget<DashboardController> {
  DashboardView({Key? key}) : super(key: key);
  int _currentIndex = 0;

  final List<String> images = [
    "https://via.placeholder.com/300",
    "https://via.placeholder.com/300",
    "https://via.placeholder.com/300",
    "https://via.placeholder.com/300",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
  var  height = MediaQuery.of(context).size.height;
  var  width = MediaQuery.of(context).size.width;
    return Container(
      color: MyColors().secondaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Get.toNamed(AppRoutes.mandi);
                  },child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: SizedBox(
                              height:kIsWeb?50: 39.5,
                              child:  FadeIn(
                                duration: Duration(seconds: 1),
                                delay: Duration(milliseconds: 200),
                                child: Image.asset(
                                  ImageConstant.dashboardLogo,
                                  fit: BoxFit.fitHeight,
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child:  FadeIn(
                            duration: Duration(seconds: 1),
                            delay: Duration(milliseconds: 300) ,
                            child: Image.asset(
                              ImageConstant.profile,
                              fit: BoxFit.fitHeight,
                              height: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FadeIn(
                  delay: Duration(milliseconds: 400),
                  duration: Duration(seconds: 2),
                  child: Text(
                    'Thakurganj, Sarfarazganj, Lucknow, Uttar Pradesh, 226003',
                    style: MyText.smallPCG,
                  ),
                ),
                SizedBox(height: 9),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      FadeIn(
                        duration: Duration(seconds: 1),
                        delay: Duration(milliseconds: 400) ,
                        child: Container(
                          height: 43,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: MyColors().borderGrey),
                              borderRadius: BorderRadius.circular(7),
                              color: MyColors().containerGrey),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Image.asset(
                                  ImageConstant.search,
                                  height: 18,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              Text(
                                'Search ',
                                style: MyText.mediumPCG,
                              ),
                              DefaultTextStyle(
                                style: MyText.mediumPCG,
                                child: AnimatedTextKit(
                                  repeatForever: true,
                                  pause: Duration(milliseconds: 0),
                                  animatedTexts: [
                                    RotateAnimatedText(
                                      '"foods"',
                                      textStyle: MyText.mediumPCG,
                                    ),
                                    RotateAnimatedText(
                                      '"vegetables"',
                                      textStyle: MyText.mediumPCG,
                                    ),
                                    RotateAnimatedText(
                                      '"juice"',
                                      textStyle: MyText.mediumPCG,
                                    ),
                                  ],
                                  onTap: () {
                                    print("Tap Event");
                                  },
                                ),
                              ),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 12.0),
                                      child: Image.asset(
                                        ImageConstant.mic,
                                        height: 18,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      FadeIn(
                        duration: Duration(seconds: 1),
                        delay: Duration(milliseconds: 500) ,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: CarouselSlider(
                            items: images.map((image) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                child: Center(
                                  child: Image.asset(ImageConstant.banner,fit: BoxFit.fitWidth,),
                                ),
                              );
                            }).toList(),
                            options: CarouselOptions(
                              viewportFraction: 10,
                              autoPlayAnimationDuration: Duration(
                                milliseconds: 600,
                              ),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              autoPlayInterval: Duration(seconds: 4),
                              autoPlay: true,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                _currentIndex = index;
                              },
                            ),
                          ),
                        ),
                      ),
                      FadeIn(
                        duration: Duration(seconds: 1),
                        delay: Duration(milliseconds: 700) ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: images.map((image) {
                            int index = images.indexOf(image);
                            return Container(
                              width: 5.0,
                              height: 5.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _currentIndex == index
                                      ? MyColors().activeIndicatorColor
                                      : MyColors().inActiveIndicatorColor),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(height: 24),
                      FadeIn(
                        duration: Duration(seconds: 1),
                        delay: Duration(milliseconds: 800),
                        child: Text(
                          'Shop by Category',
                          style: MyText.heading,
                        ),
                      ),
                      SizedBox(height: 17),
                      FadeIn(
                        duration: Duration(seconds: 1),
                        delay: Duration(milliseconds: 900),
                        child: SizedBox(
                          child: ResponsiveGridList(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              desiredItemWidth: 150,
                              minSpacing: 10,
                              children: List.generate(
                                      kIsWeb ? 20 : 4, (index) => index + 1)
                                  .map((i) {
                                return ZoomIn(
                                  delay: Duration(milliseconds: i*50),
                                  duration: Duration(seconds: 1),
                                  child: Container(
                                    height: 134,
                                    alignment: Alignment(0, 0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.grey.shade200,
                                            width: 0.7)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Image.asset(
                                          ImageConstant.gridviewimg,
                                          width: 132,
                                          height: 95,
                                        )),
                                        Container(
                                            height: 27,
                                            decoration: BoxDecoration(
                                              color: MyColors().primaryColor,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5)),
                                            ),
                                            child: Center(
                                                child: Text(
                                              'Fresh Fruits',
                                              style: MyText.smallWCN,
                                            ))),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList()),
                        ),
                      ),
                      SizedBox(height: 20),
                      ZoomIn(
                        delay: Duration(milliseconds: 500),
                        child: Image.asset(
                          ImageConstant.banner2,
                          width: width-50,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(height: 19),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Today’s Top Deal',
                              style: MyText.heading,
                            ),
                          ),
                          Text(
                            'View more',
                            style: MyText.smallPCB,
                          ),
                        ],
                      ),
                      SizedBox(height: 19),
                      SizedBox(height:  kIsWeb? 250:null,
                        width: width,
                        child: ListView.builder(
                          physics: kIsWeb? null: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                           scrollDirection: kIsWeb? Axis.horizontal:Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                          return MandiCard(index: index);
                        },),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Today\'s Top Requirements',
                              style: MyText.heading,
                            ),
                          ),
                          Text(
                            'View more',
                            style: MyText.smallPCB,
                          ),
                        ],
                      ),
                      SizedBox(height: 17),
                      Container(
                        height: 181,
                        child: ListView.builder(
                          itemCount: 20,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return
                              ZoomIn(
                              //  delay: Duration(milliseconds: index*400),
                                delay: Duration(milliseconds:index*100 ),
                                child: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                  height: 181,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: Colors.grey.shade200)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 13.0),
                                          child: Image.asset(ImageConstant.corn),
                                        ),
                                        Text('Corn',
                                            style: MyText.lato16Bw600),
                                        SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Image.asset(ImageConstant.person,
                                                height: 14),
                                            Text('Yusha & Co.',
                                                style:
                                                    MyText.lato12Gw400),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_outlined,
                                                color: HexColor('#818181'),
                                                size: 14),
                                            Text(
                                              'Khan Trading Co.',
                                              style: MyText.lato12Gw400,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Text('1 Quintal',
                                            style: MyText.lato18G600),
                                      ],
                                    ),
                                  ),
                                ),
                            ),
                              );
                          },
                        ),
                      ),
                      SizedBox(height: 19),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
