
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/post%20demand/demand%20submited/demand_submittedcontroller.dart';
import 'package:businessapp/widgets/deler_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DemandSubmittedView extends GetView<DemandSubmittedController> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(title: 'Demand Submitted', showBackButton: true),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Gap(74),
              SvgPicture.asset(
                ImageConstant.demandSubmitted,
                height: 100,
                width: 100,
              ),
              Gap(50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 43.0),
                child: Text(
                  'Thank you for submitting your demand. Our team will contact you soon.',
                  softWrap: true,
                  style: MyText.roboto20B400,
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(50),
              Divider(
                indent: 0,
                endIndent: 0,
                color: Colors.grey.shade300,
                height: 5,
              ),
              Gap(17),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Matching Suppliers for Potato:',
                            softWrap: true,
                            style: MyText.roboto18B600,
                            textAlign: TextAlign.center,
                          )),
                      Gap(18),
                      DealersCard(index: 10),
                      DealersCard(index: 10),
                      DealersCard(index: 10),
                      DealersCard(index: 10),
                      DealersCard(index: 10),
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
