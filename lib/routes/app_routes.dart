import 'package:businessapp/presentation/Contacts/binding/contacts_binding.dart';
import 'package:businessapp/presentation/Contacts/contacts_view.dart';
import 'package:businessapp/presentation/Mandi%20rates/binding/mandi_binding.dart';
import 'package:businessapp/presentation/Mandi%20rates/mandi_rates_view.dart';
import 'package:businessapp/presentation/Navigation%20bar%20/binding/navigation_binding.dart';
import 'package:businessapp/presentation/Navigation%20bar%20/view.dart';
import 'package:businessapp/presentation/dashboard/binding/dasoboard_bindind.dart';
import 'package:businessapp/presentation/dashboard/dashboard_view.dart';
import 'package:businessapp/presentation/dealer/binding/dealer_binding.dart';
import 'package:businessapp/presentation/dealer/dealer_view.dart';
import 'package:businessapp/presentation/intro/intro_screen.dart';
import 'package:businessapp/presentation/login/login_view.dart';
import 'package:businessapp/presentation/mandi/binding/mandi_binding.dart';
import 'package:businessapp/presentation/mandi/mandi_view.dart';
import 'package:businessapp/presentation/orders/binding/orders_binding.dart';
import 'package:businessapp/presentation/orders/order_view.dart';
import 'package:businessapp/presentation/otp/otp_view.dart';
import 'package:businessapp/presentation/post%20demand/demand%20submited/demand_submitted_binding.dart';
import 'package:businessapp/presentation/post%20demand/demand_submitted.dart';
import 'package:businessapp/presentation/post%20demand/post_demand_view.dart';
import 'package:businessapp/presentation/product%20comparasion/binding/product_comparasion_binding.dart';
import 'package:businessapp/presentation/product%20comparasion/product_comparasion_view.dart';
import 'package:businessapp/presentation/product%20details/bindings/product_details_binding.dart';
import 'package:businessapp/presentation/product%20details/product_details_view.dart';
import 'package:businessapp/presentation/registration/binding/registration_binding.dart';
import 'package:businessapp/presentation/registration/registration_view.dart';
import 'package:businessapp/presentation/splash_screen/splash_screen.dart';
import 'package:businessapp/presentation/splash_screen/binding/splash_binding.dart';
import 'package:get/get.dart';
import '../presentation/intro/binding/intro_binding.dart';
import '../presentation/login/binding/login_binding.dart';
import '../presentation/otp/binding/otp_binding.dart';
import '../presentation/post demand/binding/post_demand_binding.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String intro = '/intro_screen';
  static const String login = '/login';
  static const String otp = '/otp';
  static const String registration = '/registration';
  static const String dashboard = '/dashboard';
  static const String mandi = '/mandi';
  static const String dealer = '/dealer';
  static const String mandiRates = '/mandiRates';
  static const String order = '/order';
  static const String ProductDetails = '/ProductDetails';
  static const String contact = '/contact';
  static const String navigation = '/navigation';
  static const String productComparison = '/productComparison';
  static const String postDemand = '/postDemand';
  static const String demandSubmitted = '/demandSubmitted';


  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      transition: Transition.rightToLeft,
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: intro,
      page: () => Intro(),
      transition: Transition.rightToLeft,
      bindings: [
        IntroBinding(),
      ],
    ),
    GetPage(
      name: login,
      page: () => LoginScreen(),
      transition: Transition.rightToLeft,
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: otp,
      page: () => OTPView(),
      transition: Transition.rightToLeft,
      bindings: [
        OTPBinding(),
      ],
    ),
    GetPage(
      name: registration,
      transition: Transition.rightToLeft,
      page: () => Registration(),
      bindings: [
        RegistrationBinding(),
      ],
    ),
    GetPage(
      name: dashboard,
      transition: Transition.rightToLeft,
      page: () => DashboardView(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: mandi,
      transition: Transition.rightToLeft,
      page: () => MandiView(),
      bindings: [
        MandiBindings(),
      ],
    ),
    GetPage(
      name: dealer,
      transition: Transition.rightToLeft,
      page: () => DealerView(),
      bindings: [
        DealerBinding(),
      ],
    ),
    GetPage(
      name: mandiRates,
      transition: Transition.rightToLeft,
      page: () => MandiRatesView(),
      bindings: [
        MandiRatesBinding(),
      ],
    ),
    GetPage(
      name: order,
      transition: Transition.rightToLeft,
      page: () => OrderView(),
      bindings: [
        OrdersBinding(),
      ],
    ),
    GetPage(
      name: ProductDetails,
      transition: Transition.rightToLeft,
      page: () => ProductDetailsView(),
      bindings: [
        ProductDetailsBindings(),
      ],
    ),
    GetPage(
      name: contact,
      transition: Transition.rightToLeft,
      page: () => ContactView(),
      bindings: [
        ContactBinding(),
      ],
    ),
    GetPage(
      name: navigation,
      transition: Transition.rightToLeft,
      page: () => BottomNavBarPage(),
      bindings: [
        NavigationBinding(),
      ],
    ),
    GetPage(
      name: productComparison,
      transition: Transition.rightToLeft,
      page: () => ProductComparisonView(),
      bindings: [
        ProductComparisonBinding(),
      ],
    ),    GetPage(
      name: postDemand,
      transition: Transition.rightToLeft,
      page: () => PostDemandView(),
      bindings: [
        PostDemandBindind(),
      ],
    ),  GetPage(
      name: demandSubmitted,
      transition: Transition.rightToLeft,
      page: () => DemandSubmittedView(),
      bindings: [
        DemandSubmittedBinding(),
      ],
    ),


  ];
}
