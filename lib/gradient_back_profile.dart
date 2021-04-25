import 'package:flutter/material.dart';

class GradientBackProfile extends StatelessWidget {
  String title;
  double heightBack;

  GradientBackProfile(this.title, this.heightBack);

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
            fontSize: 34,
            fontFamily: "Lato",
            color: Colors.white,
            fontWeight: FontWeight.w900),
      ),
      alignment: Alignment(-0.76, -0.62),
    );

    return background;
  }
}
