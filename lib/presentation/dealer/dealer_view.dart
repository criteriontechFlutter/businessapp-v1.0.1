
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/dealer/controller/dealer_controller.dart';
import 'package:businessapp/widgets/deler_card.dart';
import 'package:businessapp/widgets/filter.dart';
import 'package:businessapp/widgets/searchbar.dart';

class DealerView extends GetWidget<DealerController>{
  @override
  Widget build(BuildContext context) {
 return Container(
   color: MyColors().secondaryColor,
   child: SafeArea(
     child: Scaffold(
       appBar: CustomAppBar(title: 'Dealers'),
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 12.0),
         child: ListView(
           children: [
             SizedBox(height: 13),
             CustomSearchBar(hintText: 'search'),
             SizedBox(height: 20),
             FilterWidget(),
             SizedBox(height: 20),
             SizedBox(
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
                 child: ListView.builder(
                   itemCount: 10,
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemBuilder: (BuildContext context, int index) {
                     return InkWell(
                         onTap: (){
                           Get.toNamed(AppRoutes.mandiRates);
                         },
                         child: DealersCard(index: index));
                   },
                 ),
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