import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/floating_action_button.dart';

// ignore: must_be_immutable
class CardImage extends StatelessWidget {
  String imagePath;

  CardImage(this.imagePath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(top: 80, left: 20.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(imagePath)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.16),
      children: [
        card,
        FloatingActionButtonGreen(),
      ],
    );
  }
}
