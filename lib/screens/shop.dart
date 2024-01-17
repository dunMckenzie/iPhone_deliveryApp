import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/iPhone.dart';
import 'package:food_delivery_app/models/shop.dart';
import 'package:food_delivery_app/widgets/rating_stars.dart';



class ShopScreen extends StatefulWidget {
  final Shop shop;

  ShopScreen({required this.shop});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  _buildStockItem(Mobile stockItem) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget> [
          Container(
            height: 175,
            width: 175,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  stockItem.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          Container(
            height: 175.0,
            width: 175.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black87.withOpacity(0.3),
                  Colors.black54.withOpacity(0.3),
                  Colors.black38.withOpacity(0.3),
                ],
                stops: [
                   0.1,
                  0.4 ,
                  0.7,
                  0.9
                ]
              )
            ),
          ),
          Positioned(
            bottom: 65.0,
            child: Column(
              children: <Widget> [
                Text(
                    stockItem.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                Text(
                    '\ksh${stockItem.price}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 10.0,
              right: 10.0,
              child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add),
                    iconSize:20.0,
                    color: Colors.white,
                    onPressed: () {},
                  )),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
          Stack(
            children: <Widget> [
              Hero(
                tag: widget.shop.imageUrl,
                child: Image(
                  height: 220.0,
                    width: MediaQuery.of(context).size.width,
                    image: AssetImage(widget.shop.imageUrl),
                fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite),
                      color: Theme.of(context).primaryColor,
                      iconSize: 35.0,
                      onPressed: () {},
                    )
                  ],
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Text(
                      widget.shop.name,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  Text(
                      '0.2 miles away',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                  ),
                ]
                ),
                RatingStars(widget.shop.rating),
                SizedBox(height: 6.0),
                Text(
                  widget.shop.address,
                  style: TextStyle(fontSize: 18.0),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.amber,
                      textStyle:
                      const TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
                  child: const Text(
                    'Reviews',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.amber,
                      textStyle:
                      const TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
                  child: const Text(
                    'Contact',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(10.0),
              crossAxisCount: 2,
              children: List.generate(widget.shop.stock.length, (index) {
                Mobile iPhone = widget.shop.stock[index];
                return _buildStockItem(iPhone);
              }),
            ),
          )
        ],
      ),

    );
  }
}
