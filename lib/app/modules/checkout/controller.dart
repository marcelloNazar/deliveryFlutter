import 'package:app_delivery/app/data/moldels/adress.dart';
import 'package:app_delivery/app/data/moldels/payment.dart';
import 'package:app_delivery/app/data/moldels/shipping_by_city.dart';
import 'package:app_delivery/app/data/services/auth/service.dart';
import 'package:app_delivery/app/data/services/cart.dart';
import 'package:app_delivery/app/modules/checkout/repository.dart';
import 'package:app_delivery/app/routes/routes.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  final CheckoutRepository _repository;
  final _cartService = Get.find<CartService>();
  final _authService = Get.find<AuthService>();

  CheckoutController(this._repository);

  num get totalCart => _cartService.total;
  num get deliveryCost {
    if (getShippingByCity != null) {
      return getShippingByCity!.cost;
    }

    return 0;
  }

  ShippingByCityModel? get getShippingByCity {
    var cityId = 1;
    return _cartService.store.value!.shippingByCity
        .firstWhereOrNull((shippingByCity) => shippingByCity.id == cityId);
  }

  num get totalOrder => totalCart + deliveryCost;
  List<PaymentModel> get paymentMethods =>
      _cartService.store.value!.paymentMethods;
  final paymentMethod = Rxn<PaymentModel>();
  bool get isLogged => _authService.isLogged;
  final addresses = RxList<AddressModel>.empty();

  @override
  void onInit() {
    fetchAddresses();

    super.onInit();
  }

  void changePaymentMethod(PaymentModel? newPaymentMethod) {
    paymentMethod.value = newPaymentMethod;
  }

  void goToNewAddress() {
    Get.toNamed(Routes.userAddress);
  }

  void goToLogin() {
    Get.toNamed(Routes.login);
  }

  fetchAddresses() {
    _repository.getUserAddresses().then((value) {
      addresses.addAll(value);
    });
  }
}
