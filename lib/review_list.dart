import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        new Review("assets/images/bg.jpg", "Juan Chichero",
            "3 post 1 comentario", "Hoy se bebe hoy se gasta"),
        new Review("assets/images/bg.jpg", "Juan Chichero",
            "3 post 1 comentario", "Hoy se bebe hoy se gasta"),
        new Review("assets/images/bg.jpg", "Juan Chichero",
            "3 post 1 comentario", "Hoy se bebe hoy se gasta"),
        new Review("assets/images/bg.jpg", "Juan Chichero",
            "3 post 1 comentario", "Hoy se bebe hoy se gasta"),
        new Review("assets/images/bg.jpg", "Juan Chichero",
            "3 post 1 comentario", "Hoy se bebe hoy se gasta"),
        new Review("assets/images/bg.jpg", "Juan Chichero",
            "3 post 1 comentario", "Hoy se bebe hoy se gasta"),
        new Review("assets/images/bg.jpg", "Juan Chichero",
            "3 post 1 comentario", "Hoy se bebe hoy se gasta"),
      ],
    );
  }
}
