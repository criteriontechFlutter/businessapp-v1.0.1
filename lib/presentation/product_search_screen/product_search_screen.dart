import '../product_search_screen/widgets/list1_item_widget.dart';
import 'controller/product_search_controller.dart';
import 'models/list1_item_model.dart';
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProductSearchScreen extends GetWidget<ProductSearchController> {
  const ProductSearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              CustomTextFormField(
                controller: controller.searchBarController,
                hintText: "lbl_sl_iders".tr,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(10.h, 18.v, 6.h, 18.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSearch1,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 19.v, 10.h, 17.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 19.v),
                borderDecoration:
                    TextFormFieldStyleHelper.fillPrimaryContainer1,
                fillColor: theme.colorScheme.primaryContainer,
              ),
              SizedBox(height: 29.v),
              _buildList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 200.v,
              crossAxisCount: 2,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: controller
                .productSearchModelObj.value.list1ItemList.value.length,
            itemBuilder: (context, index) {
              List1ItemModel model = controller
                  .productSearchModelObj.value.list1ItemList.value[index];
              return List1ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
