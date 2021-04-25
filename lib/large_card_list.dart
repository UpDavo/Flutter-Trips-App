import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/large_card.dart';

class LargeCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      LargeCard("assets/images/1.jpg"),
      LargeCard("assets/images/2.jpg"),
      LargeCard("assets/images/3.jpg"),
      LargeCard("assets/images/4.jpg"),
    ]);
  }
}
