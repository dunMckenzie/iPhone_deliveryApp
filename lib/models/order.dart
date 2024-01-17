import 'iPhone.dart';
import 'shop.dart';

class Order {
  final Shop shop;
  final Mobile iPhone;
  final String date;
  final int quantity;

  Order({
    required this.date,
    required this.shop,
    required this.iPhone,
    required this.quantity,
  });
}