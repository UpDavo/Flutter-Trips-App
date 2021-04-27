import 'package:flutter/material.dart';
import 'package:platzitrips_v2/Widgets/gradient_back.dart';
import 'package:platzitrips_v2/Place/ui/widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[GradientBack("Bienvenido"), CardImageList()],
    );
  }
}
