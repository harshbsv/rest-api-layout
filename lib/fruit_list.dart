import 'package:flutter/material.dart';
import 'package:flutter_api_handling/fruit.dart';
import 'package:flutter_api_handling/fruit_item.dart';

class FruitList extends StatelessWidget {
  final List<Fruit> fruitItems;
  FruitList({Key key, this.fruitItems});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fruitItems.length,
      itemBuilder: (context, index) {
        return FruitItem(item: fruitItems[index]);
      },
    );
  }
}
