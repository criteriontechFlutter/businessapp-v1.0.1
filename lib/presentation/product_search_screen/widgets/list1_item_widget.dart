import '../controller/product_search_controller.dart';
import '../models/list1_item_model.dart';
import 'package:businessapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class List1ItemWidget extends StatelessWidget {
  List1ItemWidget(
    this.list1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List1ItemModel list1ItemModelObj;

  var controller = Get.find<ProductSearchController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: list1ItemModelObj.longSleeveTshirt!.value,
            height: 171.adaptSize,
            width: 171.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        SizedBox(height: 11.v),
        Obx(
          () => Text(
            list1ItemModelObj.longSleeveTShirt!.value,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
