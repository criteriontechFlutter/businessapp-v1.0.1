import 'package:businessapp/core/app_export.dart';

class ProductComparisonView extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: MyColors().secondaryColor,
        child: SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: MyColors().primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 20),
                        child: Icon(
                          Icons.chevron_left,
                          color: MyColors().white,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 10),
                            child: Image.asset(
                              ImageConstant.chillies,
                              height: 64,
                              width: 64,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Chillies',
                                  style: MyText.lato18W600,
                                ),
                                Row(
                                  children: [
                                    Text('₹', style: MyText.lato16W600),
                                    Text(' 6410.00 ', style: MyText.lato22W400),
                                    Text('/Quintal', style: MyText.lato16W600),
                                  ],
                                ),
                                Text('Min ₹6340 - Max ₹6500',
                                    style: MyText.lato14W400),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('03-Feb-2023', style: MyText.lato14W400),
                              SizedBox(
                                height: 20,
                              ),
                              Text('24 Mandies', style: MyText.lato14W400),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: MyColors().white,
                                borderRadius: BorderRadius.circular(12)),
                            child: CustomTextField(
                              image: ImageConstant.search,
                              hintText: 'Search your mandi / city',
                            )),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey.shade100,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.order);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.grey,
                                            size: 17,
                                          ),
                                          Text('Green chilli',
                                              style: MyText.lato18B600),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.person_outline,color: Colors.grey,size: 18,),
                                          Text('Green chilli',
                                              style: MyText.lato14Gw400),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text('₹',
                                              style: MyText.lato16Bw600),
                                          Text(' 6410.00 ',
                                              style: MyText.lato22G400),
                                          Text('/Quintal',
                                              style: MyText.lato16Bw600),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text('Min ₹1500 - Max ₹4000',
                                          style: MyText.lato12Gw400),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('03-Feb-2023',
                                        style: MyText.roboto14G400),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
