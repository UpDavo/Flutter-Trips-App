import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/header_profile.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [HeaderProfile()],
        ),
      ],
    );
  }
}
