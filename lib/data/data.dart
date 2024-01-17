import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/iPhone.dart';
import 'package:food_delivery_app/models/order.dart';
import 'package:food_delivery_app/models/shop.dart';
import 'package:food_delivery_app/models/user.dart';




final _iphone6_64GB =
    Mobile(imageUrl: 'assets/iphone 6.webp', name: 'iPhone6_64GB', price: 15000);
final _iphone6_128GB =
    Mobile(imageUrl: 'assets/iphone 6.webp',name: 'iPhone6_128GB', price: 18300);
final _iphone7_32GB =
    Mobile(imageUrl: 'assets/ipone7a.webp',name: 'iPhone7_32GB', price: 16500);
final _iphone7_128GB =
    Mobile(imageUrl: 'assets/iphone7b.webp',name: 'iPhone7_128GB', price: 24000);
final _iphone8_64GB =
    Mobile(imageUrl: 'assets/iphone8a.webp',name: 'iPhone8_64GB', price: 26500);
final _iphone8_256GB =
    Mobile(imageUrl: 'assets/iphone8b.webp',name: 'iPhone8_256GB', price: 32000);
final _iphoneX_64GB =
    Mobile(imageUrl: 'assets/iphone x.webp',name: 'iPhoneX_64GB', price: 38300);
final _iphoneX_256GB =
    Mobile(imageUrl: 'assets/iphone x.webp',name: 'iPhoneX_256GB', price: 43999);
final _iphone11_128GB =
    Mobile(imageUrl: 'assets/iphone11a.webp',name: 'iPhone11_128GB', price: 55300);
final _iphone11_256GB =
    Mobile(imageUrl: 'assets/iphone11b.webp',name: 'iPhone11_256GB', price: 74300);
final _iphone12_128GB =
    Mobile(imageUrl: 'assets/iphone12a.webp',name: 'iPhone12_128GB', price: 77300);
final _iphone12_256GB =
    Mobile(imageUrl: 'assets/iphone12b.webp',name: 'iPhone12_256GB', price: 110300);
final _iphone13_128GB =
    Mobile(imageUrl: 'assets/iphone13a.webp',name: 'iPhone13_128GB', price: 143300);
final _iphone13_256GB =
    Mobile(imageUrl: 'assets/iphone13b.webp',name: 'iPhone13_256GB', price: 169300);
final _iphone14_128GB =
    Mobile(imageUrl: 'assets/iphone14a.webp',name: 'iPhone14_128GB', price: 175300);
final _iphone14_256GB =
    Mobile(imageUrl: 'assets/iphone14b.webp',name: 'iPhone14_256GB', price: 193500);


//shops
final _iHaven = Shop(
    imageUrl: 'assets/iHaven.jpeg',
    name: 'iHaven',
    address: 'Kimathi Street, Nairobi',
    rating: 5,
    stock: [_iphone6_64GB, _iphone6_128GB, _iphone7_32GB, _iphone7_128GB, _iphone8_64GB,
        _iphone8_256GB, _iphoneX_64GB, _iphoneX_256GB, _iphone11_128GB, _iphone11_256GB,
        _iphone12_128GB, _iphone12_256GB, _iphone13_128GB, _iphone13_256GB,
        _iphone14_128GB, _iphone14_256GB]
);
final _appleHub = Shop(
    imageUrl: 'assets/AppleHub.jpeg',
    name: 'AppleHub',
    address: 'Kimathi Street, Nairobi',
    rating: 5,
    stock: [_iphone6_64GB, _iphone6_128GB, _iphone7_32GB, _iphone7_128GB, _iphone8_64GB,
        _iphone8_256GB, _iphoneX_64GB, _iphoneX_256GB, _iphone11_128GB, _iphone11_256GB,
        _iphone12_128GB, _iphone12_256GB, _iphone13_128GB, _iphone13_256GB,
        _iphone14_128GB, _iphone14_256GB]
);
final _iGadgetGalaxy = Shop(
    imageUrl: 'assets/iGadgetGalaxy.jpeg',
    name: 'iGadgetGalaxy',
    address: 'Kimathi Street, Nairobi',
    rating: 5,
    stock: [_iphone6_64GB, _iphone6_128GB, _iphone7_32GB, _iphone7_128GB, _iphone8_64GB,
        _iphone8_256GB, _iphoneX_64GB, _iphoneX_256GB, _iphone11_128GB, _iphone11_256GB,
        _iphone12_128GB, _iphone12_256GB, _iphone13_128GB, _iphone13_256GB,
        _iphone14_128GB, _iphone14_256GB]
);
final _iphoneOasis = Shop(
    imageUrl: 'assets/iphoneOasis.jpeg',
    name: 'iphoneOasis',
    address: 'Kimathi Street, Nairobi',
    rating: 5,
    stock: [_iphone6_64GB, _iphone6_128GB, _iphone7_32GB, _iphone7_128GB, _iphone8_64GB,
        _iphone8_256GB, _iphoneX_64GB, _iphoneX_256GB, _iphone11_128GB, _iphone11_256GB,
        _iphone12_128GB, _iphone12_256GB, _iphone13_128GB, _iphone13_256GB,
        _iphone14_128GB, _iphone14_256GB]
);
final _techTrove = Shop(
    imageUrl: 'assets/TechTrove.jpeg',
    name: 'TechTrove',
    address: 'Kimathi Street, Nairobi',
    rating: 5,
    stock: [_iphone6_64GB, _iphone6_128GB, _iphone7_32GB, _iphone7_128GB, _iphone8_64GB,
        _iphone8_256GB, _iphoneX_64GB, _iphoneX_256GB, _iphone11_128GB, _iphone11_256GB,
        _iphone12_128GB, _iphone12_256GB, _iphone13_128GB, _iphone13_256GB,
        _iphone14_128GB, _iphone14_256GB]
);

final List<Shop> shops = [
    _iHaven,
    _appleHub,
    _iGadgetGalaxy,
    _iphoneOasis,
    _techTrove
];
// User
final currentUser = User(
    name: 'Rebecca',
    orders: [
        Order(
            date: 'Jan 14, 2024',
            iPhone: _iphone12_256GB,
            shop: _iHaven,
            quantity: 1,
        ),
        Order(
            date: 'Jan 13, 2024',
            iPhone: _iphone13_256GB,
            shop: _appleHub,
            quantity: 2,
        ),
        Order(
            date: 'Jan 12, 2024',
            iPhone: _iphone14_128GB,
            shop: _iphoneOasis,
            quantity: 3,
        ),
        Order(
            date: 'Jan 10, 2024',
            iPhone: _iphone11_256GB,
            shop: _techTrove,
            quantity: 2,
      ),
    ],
  cart: [
    Order(
      date: 'Jan 10, 2024',
      iPhone: _iphone12_256GB,
      shop: _iHaven,
      quantity: 2,
    ),
    Order(
      date: 'Jan 11, 2024',
      iPhone: _iphone13_256GB,
      shop: _iGadgetGalaxy,
      quantity: 3,
    ),
    Order(
      date: 'Jan 10, 2024',
      iPhone: _iphone14_256GB,
      shop: _appleHub,
      quantity: 2,
    ),
    Order(
      date: 'Jan 12, 2024',
      iPhone: _iphoneX_256GB,
      shop: _techTrove,
      quantity: 2,
    ),
    Order(
      date: 'Jan 10, 2024',
      iPhone: _iphone13_256GB,
      shop: _iphoneOasis,
      quantity: 2,
    ),
    Order(
      date: 'Jan 9, 2024',
      iPhone: _iphone12_256GB,
      shop: _iHaven,
      quantity: 2,
    ),
  ],
);