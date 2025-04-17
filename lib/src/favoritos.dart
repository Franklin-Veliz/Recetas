import 'package:flutter/material.dart';

class Favorito extends StatelessWidget {
  const Favorito({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favoritos",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text("Favoritos"),
      ),
    );
  }
}
