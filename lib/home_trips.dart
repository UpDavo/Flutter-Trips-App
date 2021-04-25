import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String dummyText =
      "Now, you can write a test. In this example, scroll through the list of items and verify that a particular item exists in the list. The FlutterDriver class provides three methods for scrolling through lists";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [DescriptionPlace("Anthony", 5, dummyText), ReviewList()],
        ),
        HeaderAppbar(),
      ],
    );
  }
}
