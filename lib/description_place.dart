import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final starborder = Container(
      margin: EdgeInsets.only(top: 290.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Colors.amber[400],
      ),
    );

    final starHalf = Container(
      margin: EdgeInsets.only(top: 353.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Colors.amber[400],
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 353.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Colors.amber[400],
      ),
    );

    final paragraph = Container(
      margin: EdgeInsets.only(top: 12.0, left: 20.0, right: 30.0),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a),
            fontFamily: "Lato"),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Flexible(
            child: Container(
                margin: EdgeInsets.only(top: 350.0, left: 20.0, right: 20.0),
                child: Text(
                  namePlace,
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Lato"),
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                ))),
        Row(
          children: <Widget>[star, star, star, star, starHalf],
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_stars,
        Column(
          children: [paragraph, paragraph],
        ),
        ButtonPurple("Navigate"),
      ],
    );
  }
}
