import '../../../core/app_export.dart';
import 'list1_item_model.dart';

/// This class defines the variables used in the [product_search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductSearchModel {
  Rx<List<List1ItemModel>> list1ItemList = Rx([
    List1ItemModel(
        longSleeveTshirt: ImageConstant.imgImage171x171.obs,
        longSleeveTShirt: "Long Sleeve T-shirt".obs),
    List1ItemModel(
        longSleeveTshirt: ImageConstant.imgImage7.obs,
        longSleeveTShirt: "Sliders".obs),
    List1ItemModel(
        longSleeveTshirt: ImageConstant.imgImage8.obs,
        longSleeveTShirt: "Slippers".obs),
    List1ItemModel(
        longSleeveTshirt: ImageConstant.imgImage9.obs,
        longSleeveTShirt: "Long Sleeve Top".obs),
    List1ItemModel(
        longSleeveTshirt: ImageConstant.imgImage10.obs,
        longSleeveTShirt: "Slip Dress".obs),
    List1ItemModel(
        longSleeveTshirt: ImageConstant.imgImage11.obs,
        longSleeveTShirt: "Nike Slides".obs)
  ]);
}
