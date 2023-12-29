import 'package:businessapp/core/app_export.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class PostDemandView extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(title: 'Post Demand'),
          body: Padding(
            padding: const EdgeInsets.all(19.0),
            child: SizedBox(
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Text(
                          'Request commodity',
                          style: MyText.roboto18B600,
                        ),
                        Gap(10),
                        CustomTextField(image: null, hintText: 'Commodity name'),
                        Gap(20),
                        CustomTextField(image: null, hintText: 'Variety (Optional)'),
                        Gap(20),
                        Divider(
                          endIndent: 0,
                          indent: 0,
                        ),
                        Gap(20),
                        Text(
                          'Buying Range (Optional)',
                          style: MyText.roboto18B600,
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Expanded(
                                child: CustomTextField(
                                    image: null, hintText: 'Min. Amount')),
                            Gap(20),
                            Expanded(
                                child: CustomTextField(
                                    image: null, hintText: 'Max. Amount')),
                          ],
                        ),
                        Gap(20),
                        SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 11.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(width: 1,color: Colors.black87,)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 17, vertical: 11.0),
                                    child: Text('Kg',style: MyText.roboto16B400,),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Gap(20),
                        Divider(
                          endIndent: 0,
                          indent: 0,
                        ),
                        Gap(20),
                        Text(
                          'Weekly Trade Volume (Optional)',
                          style: MyText.roboto18B600,
                        ),
                        Gap(20),
                        CustomTextField(image: null, hintText: 'Trade Volume Per Week'),
                        Gap(20),
                        SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 11.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(width: 1,color: Colors.black87,),
                                    ),

                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 17, vertical: 11.0),
                                    child: Text('Kg',style: MyText.roboto16B400,),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Gap(20),
                        Divider(
                          endIndent: 0,
                          indent: 0,
                        ),
                        Gap(20),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Select Location',
                                style: MyText.roboto18B600,
                              ),
                            ),
                            Icon(Icons.edit,color: Colors.grey,size:15,),
                            Gap(7),
                            Text('Change',style: MyText.roboto14Pw500,),

                          ],
                        ),
                        Gap(20),
                        Row(
                          children: [
                            SvgPicture.asset(ImageConstant.close),
                            Gap(9),
                            Text('Lucknow, Uttar Pradesh',style: MyText.roboto16G400,),
                          ],
                        ),
SizedBox(height: 150
  ,)
                      ],
                    ),
                  ),
                  PrimaryButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.demandSubmitted);
                    },text: 'Submit',)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
