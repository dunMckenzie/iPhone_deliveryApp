import 'iPhone.dart';

class Shop {
  final String imageUrl;
  final String name;
  final String address;
  final int rating;
  final List <Mobile> stock;

  Shop({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.rating,
    required this.stock,
});
}