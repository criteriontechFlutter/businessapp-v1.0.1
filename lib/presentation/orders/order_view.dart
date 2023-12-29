
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/orders/controller/orders_controller.dart';
import 'package:flutter_svg/svg.dart';

class OrderView extends GetWidget<OrdersController>{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Container(
      color: MyColors().secondaryColor,
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(title: 'Orders'),
          body: Column(
            children: [
              SizedBox(height: height/10),
              Expanded(
                flex: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(ImageConstant.addOrdersFronAnyWhere,width:36),
                      SizedBox(width: 15),
                      Expanded(child: Text('Add orders from anywhere anytime',style: MyText.roboto16B400)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height/20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Row(
                  children: [
                    SvgPicture.asset(ImageConstant.verifiedSuppliers,width:36),
                    SizedBox(width: 15),
                    Expanded(child: Text('Connect with verified suppliers from all over India to buy commodities ',style: MyText.roboto16B400,)),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Center(child: CustomIconButton(image: ImageConstant.Add, isSVG: true,isPrimaryColor: true,title: 'Order',)),
              ),
              SizedBox(height: height/20),
            ],
          ),
        ),
      ),
    );
  }

}