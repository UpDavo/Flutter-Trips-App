import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_platzi/profile_trips.dart';
import 'package:flutter_app_platzi/search_trips.dart';

import 'home_trips.dart';

class CupertinoTabBarPlatzi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.indigo), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.indigo), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.indigo), label: ""),
      ]),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => HomeTrips(),
            );
            break;
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => SearchTrips(),
            );
            break;
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => ProfileTrips(),
            );
            break;
        }
      },
    ));
  }
}
