import "package:flutter/material.dart";

// ignore: must_be_immutable
class Review extends StatelessWidget {
  String pathImage;
  String name;
  String details;
  String comment;

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final starborder = Container(
      margin: EdgeInsets.only(top: 0, right: 0),
      child: Icon(
        Icons.star_border,
        color: Colors.amber[400],
      ),
    );

    final starHalf = Container(
      margin: EdgeInsets.only(top: 0, right: 0),
      child: Icon(
        Icons.star_half,
        color: Colors.amber[400],
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 0, left: 2.0),
      child: Icon(
        Icons.star,
        color: Colors.amber[400],
        size: 13,
      ),
    );

    final userName = Container(
        margin: EdgeInsets.only(left: 20.0,),
        child: Text(
          name,
          textAlign: TextAlign.left,
          style: TextStyle(fontFamily: "Lato", fontSize: 17),
        ));

    final userInfo = Container(
        margin: EdgeInsets.only(left: 20.0, top: 8),
        child: Text(details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato", fontSize: 13, color: Color(0XFFa3a5a7))));

    final userInfo_starts = Row(
      children: [
        userInfo,
        Container(
            margin: EdgeInsets.only(
              left: 10,
                top: 8
            ),
            child: Row(
              children: [star, star, star, star, star],
            ))
      ],
    );

    final userComment = Container(
        margin: EdgeInsets.only(left: 20.0, top: 7),
        child: Text(comment,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 15,
                fontWeight: FontWeight.w900)));

    final userDetails = Container(
        margin: EdgeInsets.only(top: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [userName, userInfo_starts, userComment],
        ));

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: [photo, userDetails],
    );
  }
}
