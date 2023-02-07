import 'package:app_delivery/app/data/moldels/store.dart';
import 'package:app_delivery/app/modules/home/repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<StoreModel>> {
  HomeRepository _repository;

  HomeController(this._repository);

  @override
  void onInit() {
    _repository.getStores().then((data) {
      if (data.isEmpty) {
        change([], status: RxStatus.empty());
      } else {
        change(data, status: RxStatus.success());
      }
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });

    super.onInit();
  }
}
