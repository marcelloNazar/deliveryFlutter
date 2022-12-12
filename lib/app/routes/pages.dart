import 'package:delivery/app/modules/home/binding.dart';
import 'package:delivery/app/modules/home/page.dart';
import 'package:delivery/app/routes/routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL, page: () => HomePage(), binding: HomeBinding())
  ];
}
