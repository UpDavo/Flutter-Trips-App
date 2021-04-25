import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/information_card_profile.dart';

class LargeCard extends StatelessWidget {
  String imagePath;

  LargeCard(this.imagePath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 210,
      width: 380,
      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
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
      children: [
        card,
        InformationCardProfile("Parque del Lago",
            "Via a la costa cruzando el peaje hacia playas", "300,202,203"),
      ],
    );
  }
}
