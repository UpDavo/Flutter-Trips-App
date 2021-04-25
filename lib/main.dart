import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_platzi/cupertino_tab_bar_platzi.dart';
import 'package:flutter_app_platzi/platzi_trips.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aplicación Flutter',
        theme: ThemeData(
          // This is the theme of your application.
          primarySwatch: Colors.indigo,
        ),
        home: CupertinoTabBarPlatzi());
  }
}
