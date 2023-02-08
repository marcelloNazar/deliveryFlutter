import 'package:app_delivery/app/modules/cart/binding.dart';
import 'package:app_delivery/app/modules/cart/page.dart';
import 'package:app_delivery/app/modules/checkout/binding.dart';
import 'package:app_delivery/app/modules/checkout/page.dart';
import 'package:app_delivery/app/modules/dashboard/binding.dart';
import 'package:app_delivery/app/modules/dashboard/page.dart';
import 'package:app_delivery/app/modules/home/page.dart';
import 'package:app_delivery/app/modules/login/binding.dart';
import 'package:app_delivery/app/modules/login/page.dart';
import 'package:app_delivery/app/modules/product/binding.dart';
import 'package:app_delivery/app/modules/product/page.dart';
import 'package:app_delivery/app/modules/store/binding.dart';
import 'package:app_delivery/app/modules/store/page.dart';
import 'package:app_delivery/app/modules/user_adress/binding.dart';
import 'package:app_delivery/app/modules/user_adress/page.dart';
import 'package:app_delivery/app/routes/routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.dashboard,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.store,
      page: () => StorePage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.product,
      page: () => ProductPage(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: Routes.cart,
      page: () => CartPage(),
      binding: CartBinding(),
    ),
    GetPage(
      name: Routes.checkout,
      page: () => CheckoutPage(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.userAddress,
      page: () => UserAddressPage(),
      binding: UserAddressBinding(),
    ),
  ];
}
