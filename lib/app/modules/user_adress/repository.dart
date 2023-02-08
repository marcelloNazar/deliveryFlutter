import 'package:app_delivery/app/data/moldels/city.dart';
import 'package:app_delivery/app/data/providers/api.dart';

class UserAddressRepository {
  final Api _api;

  UserAddressRepository(this._api);

  Future<List<CityModel>> getCities() => _api.getCities();
}
