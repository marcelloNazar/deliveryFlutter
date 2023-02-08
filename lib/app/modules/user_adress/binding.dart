import 'package:app_delivery/app/data/providers/api.dart';
import 'package:app_delivery/app/modules/user_adress/controller.dart';
import 'package:app_delivery/app/modules/user_adress/repository.dart';
import 'package:get/get.dart';

class UserAddressBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserAddressController>(
        () => UserAddressController(UserAddressRepository(Get.find<Api>())));
  }
}
