import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/buttons_row_profile.dart';
import 'package:flutter_app_platzi/gradient_back_profile.dart';
import 'package:flutter_app_platzi/large_card_list.dart';
import 'package:flutter_app_platzi/user_profile.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final header = Stack(
      children: [
        GradientBackProfile("Profile", 370.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserProfile("assets/images/1.jpg"),
            ButtonsRowProfile(),
            LargeCardList(),
          ],
        )
      ],
    );

    return header;
  }
}
