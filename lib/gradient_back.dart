import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title;
  double heightBack;

  GradientBack(this.title, this.heightBack);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final background = Container(
      height: heightBack,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 28,
            fontFamily: "Lato",
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      alignment: Alignment(-0.6, -0.5),
    );

    return background;
  }
}
