import 'package:app_delivery/app/data/moldels/store.dart';
import 'package:app_delivery/app/data/providers/api.dart';

class StoreRepository {
  final Api _api;

  StoreRepository(this._api);

  Future<StoreModel> getStore(int id) => _api.getStore(id);
}
