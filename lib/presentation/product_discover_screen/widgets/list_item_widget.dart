import '../controller/product_discover_controller.dart';
import '../models/list_item_model.dart';
import 'package:businessapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListItemModel listItemModelObj;

  var controller = Get.find<ProductDiscoverController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: listItemModelObj.image!.value,
            height: 236.v,
            width: 171.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          width: 153.h,
          child: Obx(
            () => Text(
              listItemModelObj.womenBlueSkinny!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ),
        SizedBox(height: 12.v),
        Obx(
          () => Text(
            listItemModelObj.price!.value,
            style: CustomTextStyles.titleSmallPrimarySemiBold,
          ),
        ),
      ],
    );
  }
}
