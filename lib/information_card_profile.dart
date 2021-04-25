import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/floating_action_button.dart';

class InformationCardProfile extends StatelessWidget {
  // TODO: implement build

  String locationName;
  String location;
  String steps;

  InformationCardProfile(this.locationName, this.location, this.steps);

  @override
  Widget build(BuildContext context) {
    final locationTitle = Container(
      margin: EdgeInsets.only(top: 15),
      child: Text(
        locationName,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
      ),
    );

    final locationExact = Container(
      margin: EdgeInsets.only(top: 12),
      child: Text(
        location,
        style: TextStyle(fontSize: 15, color: Colors.black26),
      ),
    );

    final locationSteps = Container(
      margin: EdgeInsets.only(top: 9),
      child: Text(
        "Steps   ${steps}",
        style: TextStyle(
            fontSize: 20, color: Colors.orange, fontWeight: FontWeight.w600),
      ),
    );

    final locationInfo = Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [locationTitle, locationExact, locationSteps],
      ),
    );

    final card = Container(
      height: 130,
      width: 310,
      margin: EdgeInsets.only(top: 170, left: 41, bottom: 4),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
      child: locationInfo,
    );

    return Stack(
      alignment: Alignment(0.9, 1),
      children: [card, FloatingActionButtonGreen()],
    );
  }
}
