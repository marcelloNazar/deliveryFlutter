import 'package:app_delivery/app/data/moldels/cart.dart';
import 'package:app_delivery/app/data/moldels/store.dart';
import 'package:app_delivery/app/data/services/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final _cartService = Get.find<CartService>();
  final observationController = TextEditingController();
  List<CartProductModel> get products => _cartService.products;
  StoreModel? get store => _cartService.store.value;

  @override
  void onInit() {
    observationController.text = _cartService.observation.value;

    observationController.addListener(() {
      _cartService.observation.value = observationController.text;
    });

    super.onInit();
  }

  void removeProduct(CartProductModel cartProduct) {
    _cartService.removeProductFromCart(cartProduct);
  }
}
