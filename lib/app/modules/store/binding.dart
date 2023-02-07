import 'package:app_delivery/app/data/providers/api.dart';
import 'package:app_delivery/app/modules/store/controller.dart';
import 'package:app_delivery/app/modules/store/repository.dart';
import 'package:get/get.dart';

class StoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreController>(
        () => StoreController(StoreRepository(Get.find<Api>())));
  }
}
