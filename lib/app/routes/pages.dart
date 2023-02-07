import 'package:app_delivery/app/modules/dashboard/binding.dart';
import 'package:app_delivery/app/modules/dashboard/page.dart';
import 'package:app_delivery/app/modules/home/page.dart';
import 'package:app_delivery/app/modules/product/binding.dart';
import 'package:app_delivery/app/modules/product/page.dart';
import 'package:app_delivery/app/modules/store/binding.dart';
import 'package:app_delivery/app/modules/store/page.dart';
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
  ];
}
