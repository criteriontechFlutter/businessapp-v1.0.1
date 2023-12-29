

import 'package:businessapp/core/app_export.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MandiCard extends StatelessWidget {
  final int index;
  const MandiCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      delay: Duration(milliseconds:400),
      child: Padding(
        padding: const EdgeInsets.only( right:kIsWeb? 8.0:0,bottom:kIsWeb? 0: 10),
        child: Container(
          decoration:  BoxDecoration(
            boxShadow: [
            BoxShadow(
                offset:Offset.fromDirection(20),
            blurRadius: 5.0,
              spreadRadius: 2,
              color: Colors.grey.shade100
          ),]
        ),
          child: Container(
            width: kIsWeb?500:double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: HexColor('#F2F2F2'),
                ),
                borderRadius: BorderRadius.circular(8),
             color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                            'Date Published: 03-Feb-2023',
                            style: MyText.verySmallGrey,
                          )),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                          color: HexColor('#B9B9B9'),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: Text(
                            'Regular Order',
                            style: MyText.verySmallWCN,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Wheat',
                              style: MyText.heading18,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '₹2,300 - 2,500/Quintal',
                              style: MyText.heading16,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '250.00 Quintal/Week',
                              style: MyText.smallGrey,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(ImageConstant.tempImage,
                          height: 60, width: 120),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 21,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text('Shri Krishna Trading Co.',
                                style:
                                MyText.lato16Bw600),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,
                                    color: HexColor('#818181'),
                                    size: 16),
                                Text('Jaunpur, Uttar Pradesh',
                                    style: MyText
                                        .lato14Gw400),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        image: ImageConstant.phoneGreen,
                        title: 'Call',
                        isSVG: false,
                      ),
                      CustomIconButton(
                        image: ImageConstant.message,
                        title: 'Message',
                        isSVG: true,
                      ),
                      CustomIconButton(
                        image: ImageConstant.quotation,
                        title: 'Send Quotation',
                        isSVG: true,
                        isPrimaryColor:true,
                      ),
                      InkWell(
                        borderRadius:BorderRadius.circular(12),
                        onTap: (){

                        },
                        child: SvgPicture.asset(
                          ImageConstant.saved,
                          height: 36,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
