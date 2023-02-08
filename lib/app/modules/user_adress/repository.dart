import 'package:app_delivery/app/data/moldels/city.dart';
import 'package:app_delivery/app/data/moldels/user_address_request.dart';
import 'package:app_delivery/app/data/providers/api.dart';

class UserAddressRepository {
  final Api _api;

  UserAddressRepository(this._api);

  Future<List<CityModel>> getCities() => _api.getCities();

  Future<void> postAddress(UserAddressRequestModel userAddressRequest) =>
      _api.postAddress(userAddressRequest);
}
