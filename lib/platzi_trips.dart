import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/home_trips.dart';
import 'package:flutter_app_platzi/profile_trips.dart';
import 'package:flutter_app_platzi/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int _indexTap = 0;

  final List<Widget> _widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];

  void _onTapTapped(int index) {
    setState(() {
      _indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
            currentIndex: _indexTap,
            onTap: _onTapTapped,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
            ]),
      ),
      body: _widgetsChildren[_indexTap],
    );
  }
}
