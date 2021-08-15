import 'package:tradly_grocery_app/presentation/model/store.dart';

class Product {
  final String image;
  final String name;
  final Store store;
  final String price;

  Product(
      {required this.image,
      required this.name,
      required this.store,
      required this.price});
}
