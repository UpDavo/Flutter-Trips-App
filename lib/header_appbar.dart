import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/card_list.dart';
import 'package:flutter_app_platzi/gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: [GradientBack("Bienvenido Anthony"), CardList()],
    );
  }
}
