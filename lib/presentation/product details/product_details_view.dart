import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/product%20details/controller/product_details_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsView extends GetWidget<ProductDetailsController> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: MyColors().secondaryColor,
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.grey.shade50,
                    child: Image.asset(
                      ImageConstant.background,
                      height: 196,
                      width: width,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Image.asset(
                        ImageConstant.potato,
                        height: 168,
                        width: 268,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0, left: 28),
                    child: Icon(
                      Icons.keyboard_backspace,
                      size: 27,
                    ),
                  ),
                ],
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('03-Feb-2023', style: MyText.roboto12B600),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Potato', style: MyText.roboto26B600),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Selling range', style: MyText.roboto12G400),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text('5.0 Ton', style: MyText.roboto12B700),
                          Text('/Week', style: MyText.roboto12G400),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text('Trade Volume', style: MyText.roboto12G400),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Text('5.0 Ton', style: MyText.roboto12B700),
                          Text('/Week', style: MyText.roboto12G400),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            ImageConstant.shop,
                            height: 18,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Rishan & Bros', style: MyText.roboto16B500),
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey,
                            size: 17,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text('Lucknow, Uttar Pradesh',
                              style: MyText.lato16Bw400),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Contact Person : Rihan ',
                        style: MyText.lato14P400,
                      ),
                      SizedBox(height: 9),
                      CustomIconButton(
                        image: ImageConstant.phoneGreen,
                        title: 'Call',
                        isSVG: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomIconButton(
                        image: ImageConstant.message,
                        title: 'Chat',
                        isSVG: true,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                  indent: 0,
                  endIndent: 0,
                  color: Colors.grey.shade200,
                  height: 2),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Other commodities from this Supplier :',
                          style: MyText.roboto18B600),
                      SizedBox(height: 16),
                      SizedBox(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: MyColors().grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Text('03-Feb-2023',
                                              style: MyText.roboto12B600),
                                          SizedBox(height: 7),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 9.0),
                                            child: SizedBox(
                                                height: 97,
                                                width: 97,
                                                child: Image.asset(
                                                    ImageConstant.chillies,
                                                    fit: BoxFit.cover)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 24,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Tomato',
                                              style: MyText.roboto18B600),
                                          SizedBox(height: 14),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.grey,
                                                size: 17,
                                              ),
                                              SizedBox(
                                                width: 16,
                                              ),
                                              Text('Lucknow, Uttar Pradesh',
                                                  style: MyText.lato16Bw400),
                                            ],
                                          ),
                                          SizedBox(height: 13),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Text('Selling range',
                                                      style:
                                                          MyText.roboto12G400),
                                                  SizedBox(
                                                    height: 6,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('5.0 Ton',
                                                          style: MyText
                                                              .roboto12B700),
                                                      Text('/Week',
                                                          style: MyText
                                                              .roboto12G400),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 13,
                                              ),
                                              Column(
                                                children: [
                                                  Text('Trade Volume',
                                                      style:
                                                          MyText.roboto12G400),
                                                  SizedBox(height: 6),
                                                  Row(
                                                    children: [
                                                      Text('5.0 Ton',
                                                          style: MyText
                                                              .roboto12B700),
                                                      Text('/Week',
                                                          style: MyText
                                                              .roboto12G400),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 57),
                      SizedBox(
                          child: Center(
                              child: Image.asset(ImageConstant.submitdemand,
                                  height: 70))),
                      SizedBox(
                        height: 17,
                      ),
                      SizedBox(
                          child: Center(
                              child: Text(
                        'Submit demands to find\n right suppliers',
                        style: MyText.roboto20B600,
                        textAlign: TextAlign.center,
                      ))),
                      SizedBox(height: 31),
                      PrimaryButton(
                          radius: 31,
                          text: 'Post Demand',
                          onTap: () {
                            Get.toNamed(AppRoutes.postDemand);
                          }),
                      SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
