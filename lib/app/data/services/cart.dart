import 'package:app_delivery/app/data/moldels/cart.dart';
import 'package:app_delivery/app/data/moldels/store.dart';
import 'package:get/get.dart';

class CartService extends GetxService {
  List<CartProductModel> products = RxList<CartProductModel>.empty();

  final store = Rxn<StoreModel>();
  final observation = ''.obs;

  num get total =>
      products.fold(0, (total, cartProduct) => total + cartProduct.total);

  void addProductToCart(CartProductModel cartProduct) {
    products.add(cartProduct);
  }

  void removeProductFromCart(CartProductModel cartProduct) {
    products.remove(cartProduct);
  }

  bool isANewStore(StoreModel newStore) {
    return store.value != null && store.value!.id != newStore.id;
  }

  void clearCart() {
    products.clear();
  }

  void newCart(StoreModel newStore) {
    store.value = newStore;
  }
}
