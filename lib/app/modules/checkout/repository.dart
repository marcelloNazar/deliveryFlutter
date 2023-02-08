import 'package:app_delivery/app/data/moldels/adress.dart';
import 'package:app_delivery/app/data/providers/api.dart';

class CheckoutRepository {
  final Api _api;

  CheckoutRepository(this._api);

  Future<List<AddressModel>> getUserAddresses() => _api.getUserAddresses();
}
