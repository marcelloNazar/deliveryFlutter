import 'package:app_delivery/app/modules/cart/controller.dart';
import 'package:get/get.dart';

class CartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
  }
}
