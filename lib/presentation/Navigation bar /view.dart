
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/Navigation%20bar%20/controller/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BottomNavBarPage extends GetWidget<NavigationController>{

  @override
  Widget build(BuildContext context) {

    NavigationController controler =NavigationController();

    return GetBuilder(
      init: NavigationController(),
      builder: (_) {
        return Scaffold(
          body: controler.pages[controler.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle:MyText.roboto12P400,
            unselectedLabelStyle:MyText.roboto12P400,
              showUnselectedLabels:true,
              fixedColor:MyColors().primaryColor,
            backgroundColor:MyColors().primaryColor,
            unselectedItemColor:Colors.grey,
            currentIndex: controler.currentIndex,
            onTap: (index) {
              controler.currentIndex = index;
              controller.update();
            },
            items:  [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(ImageConstant.home,height: 21,fit: BoxFit.cover,color:controler.currentIndex==0? MyColors().primaryColor:null),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon:SvgPicture.asset(ImageConstant.mandi,fit: BoxFit.cover,height: 21,color:controler.currentIndex==1? MyColors().primaryColor:null),
                label: 'Mandi',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(ImageConstant.dealer,fit: BoxFit.cover,height: 21,color:controler.currentIndex==2? MyColors().primaryColor:null),
                label: 'Dealers',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(ImageConstant.mandiRates,fit: BoxFit.cover,height: 21,color:controler.currentIndex==3? MyColors().primaryColor:null),
                label: 'Mandi rates',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(ImageConstant.order,fit: BoxFit.cover,height: 21,color:controler.currentIndex==4? MyColors().primaryColor:null),
                label: 'Order',
              ),
            ],
          ),
        );
      }
    );
  }

}
