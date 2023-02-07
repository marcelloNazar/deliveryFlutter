import 'package:app_delivery/app/data/moldels/category.dart';

class StoreModel {
  int id;
  String name;
  bool isOnline;
  List<CategoryModel> categories;

  StoreModel({
    required this.id,
    required this.name,
    required this.isOnline,
    required this.categories,
  });

  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
      id: json['id'],
      name: json['nome'],
      isOnline: json['online'] == 1,
      categories: json['categorias'] == null
          ? []
          : List<CategoryModel>.from(json['categorias']
              .map((product) => CategoryModel.fromJson(product))));
}
