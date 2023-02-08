import 'package:app_delivery/app/modules/login/controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}