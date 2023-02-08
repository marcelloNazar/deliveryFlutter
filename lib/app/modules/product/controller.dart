import 'package:app_delivery/app/data/moldels/cart.dart';
import 'package:app_delivery/app/data/moldels/products.dart';
import 'package:app_delivery/app/data/moldels/store.dart';
import 'package:app_delivery/app/data/services/cart.dart';
import 'package:app_delivery/app/widgets/quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final product = Rxn<ProductModel>();
  final store = Rxn<StoreModel>();
  final observationController = TextEditingController();
  final _cartService = Get.find<CartService>();

  @override
  void onInit() {
    product.value = Get.arguments['product'];
    store.value = Get.arguments['store'];

    super.onInit();
  }

  void addToCart() async {
    var quantity = Get.find<QuantityController>().quantity;

    if (_cartService.isANewStore(store.value!)) {
      var startNewCart = await showDialogNewCart();

      if (startNewCart == true) {
        _cartService.clearCart();
      } else {
        return;
      }
    }

    if (_cartService.products.isEmpty) {
      _cartService.newCart(store.value!);
    }

    _cartService.addProductToCart(CartProductModel(
        product: product.value!,
        quantity: quantity,
        observation: observationController.text));

    ScaffoldMessenger.of(Get.overlayContext!).showSnackBar(SnackBar(
      content: Text(
          'O item ' + product.value!.name + ' foi adicionado no carrinho.'),
    ));

    Future.delayed(const Duration(milliseconds: 300), () => Get.back());
  }

  Future<dynamic> showDialogNewCart() {
    return Get.dialog(AlertDialog(
      content: const Text(
          'Seu carrinho atual será perdido se adicionar produtos de um novo estabelecimento.'),
      actions: [
        TextButton(onPressed: () => Get.back(), child: const Text('Voltar')),
        TextButton(
            onPressed: () => Get.back(result: true),
            child: const Text('Continuar'))
      ],
    ));
  }
}
