import 'package:app_delivery/app/data/moldels/store.dart';
import 'package:app_delivery/app/data/providers/api.dart';

class HomeRepository {
  final Api _api;

  HomeRepository(this._api);

  Future<List<StoreModel>> getStores() => _api.getStores();
}
