import 'package:flutter/material.dart';
import 'package:flutter_api_handling/fruit.dart';
import 'package:google_fonts/google_fonts.dart';

class FruitItem extends StatelessWidget {
  final Fruit item;
  FruitItem({this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              this.item.imageUrl,
              width: 200,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      this.item.title,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text("id: ${this.item.id}"),
                    Text("quantity: ${this.item.quantity}"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
