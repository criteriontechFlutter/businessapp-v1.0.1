
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/mandi/controller/mandi_controller.dart';
import 'package:businessapp/widgets/mandicard.dart';
import 'package:businessapp/widgets/searchbar.dart';




class MandiView extends GetWidget<MandiController>{
  const MandiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container(
    color:MyColors().secondaryColor,
      child: SafeArea(child: Scaffold(
        appBar: CustomAppBar(title: 'Mandi',),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: ListView(
            children: [
              SizedBox(height: 13),
              CustomSearchBar(hintText: 'Search',),
              SizedBox(height: 13),
           SizedBox(
             child: ListView.builder(
               itemCount: 10,
               shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               itemBuilder: (BuildContext context, int index) {
                 return InkWell(
                   onTap: (){
                     Get.toNamed(AppRoutes.dealer);
                   },
                     child: MandiCard(index: index));
               },
             ),
           )
            ],
          ),
        ),
      )));
  }
}