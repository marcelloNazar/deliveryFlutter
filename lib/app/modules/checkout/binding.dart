import 'package:app_delivery/app/data/providers/api.dart';
import 'package:app_delivery/app/modules/checkout/controller.dart';
import 'package:app_delivery/app/modules/checkout/repository.dart';
import 'package:get/get.dart';

class CheckoutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckoutController>(
        () => CheckoutController(CheckoutRepository(Get.find<Api>())));
  }
}
