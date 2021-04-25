import 'package:flutter/material.dart';

class ButtonsRowProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonsRowProfile();
  }
}

class _ButtonsRowProfile extends State<ButtonsRowProfile> {
  //Funciones

  //Componentes internos
  final buttonLarge = Container(
      margin: EdgeInsets.only(left: 30, right: 10),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.indigo,
        ),
      ));

  final buttonSmallSave = Container(
    margin: EdgeInsets.only(left: 20),
    child: FloatingActionButton(
      backgroundColor: Colors.white,
      mini: true,
      child: Icon(
        Icons.bookmark_border,
        color: Colors.indigo,
      ),
    ),
  );

  final buttonSmallBag = Container(
    margin: EdgeInsets.only(left: 20),
    child: FloatingActionButton(
      backgroundColor: Colors.white,
      mini: true,
      child: Icon(
        Icons.shopping_bag_outlined,
        color: Colors.indigo,
      ),
    ),
  );

  final buttonSmallMail = Container(
    margin: EdgeInsets.only(left: 20),
    child: FloatingActionButton(
      backgroundColor: Colors.white,
      mini: true,
      child: Icon(
        Icons.mail,
        color: Colors.indigo,
      ),
    ),
  );

  final buttonSmallProfile = Container(
    margin: EdgeInsets.only(left: 20),
    child: FloatingActionButton(
      backgroundColor: Colors.white,
      mini: true,
      child: Icon(
        Icons.person,
        color: Colors.indigo,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 24,left: 2, right: 10),
        child: Center(
          child: Row(
            children: [
              buttonSmallSave,
              buttonSmallBag,
              buttonLarge,
              buttonSmallMail,
              buttonSmallProfile
            ],
          ),
        ));
  }
}
