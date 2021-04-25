import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _isFavorited = false;

  void onPressedFav() {
    final snackBar = SnackBar(
      content: Text('Agregaste a tus favoritos'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
          _toggleFavorite();
        },
      ),
    );
    _toggleFavorite();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Colors.green,
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: _isFavorited
          ? Icon(Icons.favorite)
          : Icon(Icons.favorite_border),
    );
  }
}
