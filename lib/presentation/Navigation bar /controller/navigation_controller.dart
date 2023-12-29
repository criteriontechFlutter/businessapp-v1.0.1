
import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/Mandi%20rates/mandi_rates_view.dart';
import 'package:businessapp/presentation/dashboard/dashboard_view.dart';
import 'package:businessapp/presentation/dealer/dealer_view.dart';
import 'package:businessapp/presentation/mandi/mandi_view.dart';
import 'package:businessapp/presentation/orders/order_view.dart';

class NavigationController extends GetxController{

  int currentIndex = 0;

  final List<Widget> pages = [
    DashboardView(),
    MandiRatesView(),
    DealerView(),
    MandiView(),
    OrderView()
  ];

}