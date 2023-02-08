import 'package:app_delivery/app/data/moldels/category.dart';
import 'package:app_delivery/app/data/moldels/payment.dart';
import 'package:app_delivery/app/data/moldels/shipping_by_city.dart';

class StoreModel {
  int id;
  String name;
  bool isOnline;
  List<CategoryModel> categories;
  List<ShippingByCityModel> shippingByCity;
  List<PaymentModel> paymentMethods;

  StoreModel({
    required this.id,
    required this.name,
    required this.isOnline,
    required this.categories,
    required this.shippingByCity,
    required this.paymentMethods,
  });

  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        id: json['id'],
        name: json['nome'],
        isOnline: json['online'] == 1,
        categories: json['categorias'] == null
            ? []
            : List<CategoryModel>.from(
                json['categorias'].map(
                  (product) => CategoryModel.fromJson(product),
                ),
              ),
        shippingByCity: json['cidades'] == null
            ? []
            : List<ShippingByCityModel>.from(
                json['cidades']
                    .map((city) => ShippingByCityModel.fromJson(city)),
              ),
        paymentMethods: json['meiospagamentos'] == null
            ? []
            : List<PaymentModel>.from(json['meiospagamentos']
                .map((paymentMethod) => PaymentModel.fromJson(paymentMethod))),
      );
}
