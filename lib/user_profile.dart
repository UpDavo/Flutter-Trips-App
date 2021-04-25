import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/buttons_row_profile.dart';

// ignore: must_be_immutable
class UserProfile extends StatelessWidget {
  String pathImage;

  UserProfile(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userName = Container(
      margin: EdgeInsets.only(top: 44),
      child: Text("Anthony Villegas",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 21)),
    );

    final userMail = Container(
      margin: EdgeInsets.only(top: 6, left: 2),
      child: Text(
        "updavo@gmail.com",
        style: TextStyle(color: Colors.white54, fontSize: 14),
      ),
    );

    final details = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userMail],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 15.0),
      width: 95.0,
      height: 95.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2.5),
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final userBox = Container(
      margin: EdgeInsets.only(top: 100, left: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [photo, details],
      ),
    );

    return userBox;
  }
}
