import 'package:flutter/material.dart';
import 'card_image.dart';

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/images/1.jpg"),
          CardImage("assets/images/2.jpg"),
          CardImage("assets/images/3.jpg"),
          CardImage("assets/images/4.jpg")
        ],
      ),
    );
  }
}
